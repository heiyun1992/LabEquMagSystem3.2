package com.mao.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Admin;
import com.mao.pojo.Teacher;
import com.mao.service.AdminService;
import com.mao.service.TeacherService;


@Controller
@RequestMapping("admin")
public class AdminController {
	
	
	@Resource
	private AdminService adminService;
	
	@Resource
	private TeacherService teacherService;
	

	@RequestMapping("loginAdmin1")
	public String login1(Admin admin,HttpServletRequest request){

		return "admin/LoginUser";	
		
	}
	
	
	@RequestMapping("loginAdmin")
	public String login2(Admin admin,BindingResult result,HttpServletRequest request){
		
		HttpSession session = request.getSession();
		admin=adminService.loginAdmin(admin);
		System.out.println(JSON.toJSONString(admin));
		if(result.hasErrors()){
			return "admin/LoginUser";
		}
		if(admin!=null){
			session.setAttribute("admin",admin); 
			session.setAttribute("currentUser", admin);
			if(!(admin.getRole().equals("四级"))){
				System.out.println("2");
		     return "redirect:/equipment/getAllEquipment";	
			}else{
				System.out.println("3");
				return "redirect:/teacher/getAllEquipment";	
			}
		}
		else{
		
			return "admin/LoginUser";
		}	
//		return null;
	}		
	@RequestMapping("updateAdmin1")
	public String updateAdmin1(HttpServletRequest request,Admin admin){
		return "admin/updPassword";
		
	}
	@RequestMapping("updateAdmin")
	public String updateAdmin(HttpServletRequest request,Admin admin,@RequestParam("password") String password){
		admin=(Admin)request.getSession().getAttribute("admin");
		admin.setPassword(password);
		//System.out.println(password);
		
		System.out.println(JSON.toJSONString(admin));
		adminService.updateAdmin(admin);
		return "redirect:/admin/getAllAdmin";
		
	}
	
	
	
	@RequestMapping("addAdmin1")
	public String addAdmin1(HttpServletRequest request){
		
		return "admin/addAdmin";
		
	}
	
	@RequestMapping("addAdmin")
	public String addAdmin(@Valid Admin admin,BindingResult result,HttpServletRequest request){
		if(result.hasErrors()){
			System.out.println("221");
			return "admin/addAdmin";
		}else{
		adminService.addAdmin(admin);
		
		return "redirect:/admin/getAllAdmin";
		}
		
	}
	
	@RequestMapping(value="delAdmin",method=RequestMethod.GET)
	public String delAdmin(int delId,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(delId));
		adminService.delAdmin(delId);
		
		return "redirect:/admin/getAllAdmin";
	}	
	
	@RequestMapping("getAllAdmin")
	 public String getAllAdmin(HttpServletRequest request,Model model){
		model.addAttribute("adminList",adminService.getAllAdmin());
		System.out.println(JSON.toJSONString(adminService.getAllAdmin()));
		 return "admin/listsAdmin";				
	}
	
	@RequestMapping(value="/updAdmin",method=RequestMethod.GET)
	public String updToTeacher(int updId,HttpServletRequest request){
		
		request.setAttribute("fadmin",adminService.serhAdminById(updId));
		return "admin/updAdmin";			
	}
	
	@RequestMapping(value="updAdmin",method=RequestMethod.POST)
	public String updTeacher(Admin admin,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(admin));
		adminService.updateAdmin(admin);		
		return "redirect:/admin/getAllAdmin";		
		
	}
	
	@RequestMapping(value="/check")
	public void check(String name,PrintWriter out,HttpServletRequest request){
		String info = null;
		Admin admin=adminService.findAdminByName(name);
		//System.out.println("name="+name);
		//System.out.println(JSON.toJSONString(admin));
		if(admin!=null){
			info="0";		
		}else{
			info="1";
			
		}
		out.write(info);
	}
	
}
