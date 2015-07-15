package com.mao.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Laboratory;
import com.mao.service.LaboratoryService;

/**
 * Created by maozhongzhen on 2015年5月23日.
 */

@Controller
@RequestMapping("laboratory")
public class LaboratoryController {
	
	@Resource
	private LaboratoryService laboratoryService;
	
	@RequestMapping(value="/addLaboratory",method=RequestMethod.GET)
	 public String addLaboratoryTo(){
		
		 return "laboratory/addLaboratory";
				
	}
	
	@RequestMapping(value="/addLaboratory",method=RequestMethod.POST)
	 public String addLaboratory(Laboratory laboratory){
		
		laboratoryService.addLaboratory(laboratory);
		
		 return "redirect:/laboratory/getAllLaboratory";
				
	}
	
	@RequestMapping(value="/getAllLaboratory",method=RequestMethod.GET)
	 public String getAllLaboratory(Laboratory laboratory,Model model){
		
		model.addAttribute("laboratoryList",laboratoryService.getAllLaboratory());
		
		 return "laboratory/listsLaboratory";
				
	}
	
	@RequestMapping(value="getLaboratoryById/{fidId}",method=RequestMethod.GET)
	 public String getLaboratoryByName(@PathVariable String fidId,HttpServletRequest request) throws UnsupportedEncodingException{
		
		/*request.setAttribute("laboratoryLists",laboratoryService.getAllLaboratory());*/
		request.setAttribute("laboratorys",laboratoryService.getLaboratoryByName(new String(fidId.getBytes("ISO-8859-1"),"UTF-8")));		
		
		System.out.println(JSON.toJSONString(laboratoryService.getLaboratoryByName(new String(fidId.getBytes("ISO-8859-1"),"UTF-8"))));
		 return "laboratory/findLaboratory";
				
	}
	
	@RequestMapping(value="delLaboratory/{delId}",method=RequestMethod.GET)
	 public String delLaboratory(@PathVariable(value="delId")  int delId){
		laboratoryService.delLaboratoryById(delId);
		
		 return "redirect:/laboratory/getAllLaboratory";
				
	}
	
	@RequestMapping(value="/checkUnion")
	public void checkNameUnion(String name,PrintWriter out,HttpServletRequest request) throws UnsupportedEncodingException{
		String info = null;	
		System.out.println(name);
		
			if(laboratoryService.getLaboratoryByName(name)!=null){
				info="0";		
			}else{
				info="1"; 
				
			}
		
			// TODO Auto-generated catch block
		
		out.write(info);
	}

}
