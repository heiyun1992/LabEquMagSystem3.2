package com.mao.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Teacher;
import com.mao.pojo.Admin;
import com.mao.service.EquipmentService;
import com.mao.service.TeacherService;

/**
 * Created by maozhongzhen on 2015年4月23日.
 */

@Controller
@RequestMapping("teacher")
public class TeacherController {
	
	@Resource
	private TeacherService teacherService;
	
	@Resource
	private EquipmentService equipmentService;
	
	
	@RequestMapping("getAllTeacher")
	public String getAllTeacher(HttpServletRequest request,Model model){
		
		model.addAttribute("teacherList",teacherService.getAllTeacher());
		
		return "teacher/listsTeacher";
		
	}
	
	@RequestMapping("getAllEquipment")
	 public String getAllLoanEquipment(HttpServletRequest request,Model model){
		model.addAttribute("EquipmentLists",equipmentService.getAllEquipment());
		 System.out.println(JSON.toJSONString(equipmentService.getAllEquipment()));
		 return "teacher/listsEquipment";
				
	}
	
	
	@RequestMapping(value="/addTeacher",method=RequestMethod.GET)
	public String addToTeacher(Teacher teacher,HttpServletRequest request){

		return "teacher/addTeacher";			
	}
	
	@RequestMapping(value="addTeacher",method=RequestMethod.POST)
	public String addTeacher(Teacher teacher,HttpServletRequest request){
		
		teacherService.addTeacher(teacher);
		
		return "redirect:/teacher/getAllTeacher";	
		
	}

	@RequestMapping(value="/findTeacherByTeacher_num",method=RequestMethod.GET)
	public void findTeacherByTeacher_num(String teacher_num,PrintWriter out,HttpServletRequest request){	
		String info = null;
		if(teacherService.findTeacherByTeacher_num(teacher_num)!=null){
			info="0";		
		}else{
			info="1";			
		}
		out.write(info);
				
	}
	
	@RequestMapping(value="/updTeacher",method=RequestMethod.GET)
	public String updToTeacher(int updId,HttpServletRequest request){
		
		request.setAttribute("teacher",teacherService.serhTeacherById(updId));
		

		return "teacher/updTeacher";			
	}
	
	@RequestMapping(value="updTeacher",method=RequestMethod.POST)
	public String updTeacher(Teacher teacher,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(teacher));
		teacherService.updTeacher(teacher);
		
		return "redirect:/teacher/getAllTeacher";		
		
	}
	
	@RequestMapping(value="/updInfomation",method=RequestMethod.GET)
	public String updToInfomation(Model model,HttpServletRequest request){
		Teacher teacher=new Teacher();
		Admin admin = (Admin)request.getSession().getAttribute("admin");
		teacher.setName(admin.getName());
		teacher.setPassword(admin.getPassword());
		System.out.println(JSON.toJSONString("222"+teacherService.serhTeacherByObject(teacher)));
		
		model.addAttribute("currentUser",teacherService.serhTeacherByObject(teacher));
		
		

		return "teacher/updInfomation";			
	}
	
	@RequestMapping(value="updInfomation",method=RequestMethod.POST)
	public String updInfomation(Teacher teacher,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(teacher));
		teacherService.updTeacher(teacher);
		
		return "redirect:/teacher/getAllEquipment";		
		
	}
	
	@RequestMapping(value="/updTeacherPass",method=RequestMethod.GET)
	public String updTeacherPass(Model model,HttpServletRequest request){
		Teacher teacher=new Teacher();
		Admin admin = (Admin)request.getSession().getAttribute("currentUser");
		teacher.setName(admin.getName());
		teacher.setPassword(admin.getPassword());
		System.out.println(JSON.toJSONString("222"+teacherService.serhTeacherByObject(teacher)));
		
		model.addAttribute("currentUser",teacherService.serhTeacherByObject(teacher));
		
		

		return "teacher/updPassword";			
	}
	
	@RequestMapping("teacherLoanHistory")
	public String teacherLoanHistory(Model model,HttpServletRequest request){
		Teacher teacher=new Teacher();
		Admin admin = (Admin)request.getSession().getAttribute("currentUser");
		teacher.setName(admin.getName());
		teacher.setPassword(admin.getPassword());
		System.out.println(JSON.toJSONString("333"+teacherService.serhTeacherByObject(teacher)));
		System.out.println(JSON.toJSONString(admin));
		
		
		model.addAttribute("currentUser",teacherService.serhTeacherByObject(teacher));
		model.addAttribute("teacherLoanHistoryList",teacherService.serhLoanHistory(teacherService.serhTeacherByObject(teacher)));
		
		

		return "teacher/teacherLoanHistoryList";			
	}
	
	
	@RequestMapping(value="delTeacher",method=RequestMethod.GET)
	public String delTeacher(int delId,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(delId));
		teacherService.delTeacher(delId);
		
		return "redirect:/teacher/getAllTeacher";
	}	
	
	
	@RequestMapping(value="/updTeachers",method=RequestMethod.GET)
	public String updToTeacher1(Teacher teacher,HttpServletRequest request){	

		return "teacher/updTeacher";			
	}
	
	

}
