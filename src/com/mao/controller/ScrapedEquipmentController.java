

package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Admin;
import com.mao.pojo.Equipment;
import com.mao.pojo.ScrapedEquipment;
import com.mao.service.EquipmentService;
import com.mao.service.ScrapedEquipmentService;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

@Controller
@RequestMapping("scrap")
public class ScrapedEquipmentController {
	
	@Resource
	private ScrapedEquipmentService scrapedEquipmentService;
	
	@Resource
	private EquipmentService equipmentService;
	
	
	@RequestMapping("getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		model.addAttribute("equipmentListsss",equipmentService.getAllLoanEquipment());
		 System.out.println(JSON.toJSONString(equipmentService.getAllLoanEquipment()));
		 return "scrap/listsEquipment";
				
	}
		
	
	@RequestMapping("addScrapedEquipment1")
	 public String toAddScrapedEquipment(HttpServletRequest request,int addId,Model model){
		
		model.addAttribute("aEquipment",equipmentService.findEquipmentById(addId));
		
		
		 return "scrap/addScrapedEquipment";
				
	}
	@RequestMapping("addScrapedEquipment")
	 public String addScrapedEquipment(HttpServletRequest request,ScrapedEquipment scrapedEquipment){
		
		System.out.println(JSON.toJSONString(scrapedEquipment));
		scrapedEquipmentService.addScrapedEquipment(scrapedEquipment);
		
		 return "redirect:/scrap/getAllScrapedEquipment";
				
	}
	
	@RequestMapping("getAllScrapedEquipment")
	 public String getAllScrapedEquipment(HttpServletRequest request,Model model){
		
		System.out.println(JSON.toJSONString(scrapedEquipmentService.getAllScrapedEquipment()));
		model.addAttribute("scrapedEquipmentList", scrapedEquipmentService.getAllScrapedEquipment());
						
		 return "scrap/listsScrapedEquipment";
				
	}
	
	@RequestMapping("detailScrapedEquipment")
	 public String serchScrapedEquipment(HttpServletRequest request,Model model,int fId){
		
		System.out.println(JSON.toJSONString(scrapedEquipmentService.getScrapedEquipmentById(fId)));
		model.addAttribute("detailscrapedEquipment", scrapedEquipmentService.getScrapedEquipmentById(fId));
						
		 return "scrap/detailScrapedEquipment";
				
	}
	
	
	

}


