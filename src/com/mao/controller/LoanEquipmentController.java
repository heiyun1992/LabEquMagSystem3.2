

package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.LoanEquipment;
import com.mao.service.EquipmentService;
import com.mao.service.LoanEquipmentService;
import com.mao.service.TeacherService;

/** 
 *Created by maozhongzhen on 2015年4月15日 . 
 */


@Controller
@RequestMapping("loan")
public class LoanEquipmentController {
	
	@Resource
	private LoanEquipmentService loanEquipmentService;
	
	@Resource
	private TeacherService teacherService;
	
	@Resource
	private EquipmentService equipmentService;
	
	
	/*@RequestMapping("getAllLoanEquipment")
	public String getAllLoanEquipment(HttpServletRequest request,Model model){
		loanEquipmentService.showLoanEquipmentByPage(request, model);
		
		return "loan/listsLoanEquipment";
		
	}*/
	@RequestMapping("getAllLoanEquipment")
	public String getAllLoanEquipment(HttpServletRequest request,Model model){
		//loanEquipmentService.getAllLoanEquipment1();
		model.addAttribute("loanEquipmentLists",loanEquipmentService.getAllLoanEquipment1());
		
		return "loan/listsLoanEquipment";
		
	}
	
	
	@RequestMapping("addLoanEquipment1")
	 public String addLoanEquipment1(HttpServletRequest request,LoanEquipment loanEquipment,Model model){	
		model.addAttribute("teacherLists",teacherService.getAllTeacher());
		model.addAttribute("equipmentLists",equipmentService.getAllLoanEquipment());
		
		
		return "loan/addLoanEquipment";
				
	}
	
	@RequestMapping("addLoanEquipment")
	 public String addLoanEquipment(HttpServletRequest request,LoanEquipment loanEquipment){
		System.out.println(JSON.toJSONString(loanEquipment));
		System.out.println(loanEquipment.getLoan_date());
		loanEquipmentService.addLoanEquipment(loanEquipment);
		
		
		 return "redirect:/loan/getAllLoanEquipment";
				
	}
}


