package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.StateEquipment;
import com.mao.service.EquipmentService;
import com.mao.service.StateEquipmentService;
import com.mao.service.TeacherService;

/**
 * Created by maozhongzhen on 2015年5月24日.
 */

@Controller
@RequestMapping(value="/state")
public class StateEquipmentController {
	
	@Autowired
	private StateEquipmentService stateEquipmentService;
	
	@Autowired
	private EquipmentService equipmentService;
	
	@Autowired
	private TeacherService teacherService;
	
	
	@RequestMapping("getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		model.addAttribute("equipmentListsss",equipmentService.getAllLoanEquipment());
		 System.out.println(JSON.toJSONString(equipmentService.getAllLoanEquipment()));
		 return "state/listsEquipment";
				
	}
	
	@RequestMapping("getAllStateEquipment")
	 public String getAllStateEquipment(HttpServletRequest request,Model model){
		model.addAttribute("stateEquipmentLists",stateEquipmentService.getAllStateEquipment());
		 //System.out.println(JSON.toJSONString(equipmentService.getAllLoanEquipment()));
		 return "state/listsStateEquipment";
				
	}
	
	@RequestMapping(value="/new/{addId}",method=RequestMethod.GET)
	public String addStateEquipment(@PathVariable int addId,Model model){
		
		model.addAttribute("teacherLists",teacherService.getAllTeacher());
		model.addAttribute("sEquipment",equipmentService.findEquipmentById(addId));
		return "state/newStateEquipment";
	}
	
	@RequestMapping(value="/new",method=RequestMethod.POST)
	public String addStateEquipment1(StateEquipment stateEquipment,Model model){
		System.out.println(JSON.toJSONString(stateEquipment));
		stateEquipmentService.addStateEquipment(stateEquipment);
		return "redirect:/state/getAllStateEquipment";
	}
	
	@RequestMapping(value="/delStateEquipment/{delId}",method=RequestMethod.GET)
	public String delStateEquipment(@PathVariable int delId){
		stateEquipmentService.delStateEquipment(delId);
		return "redirect:/state/getAllStateEquipment";
	}

}
