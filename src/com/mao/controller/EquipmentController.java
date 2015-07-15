

package com.mao.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Equipment;
import com.mao.pojo.EquipmentUsed;
import com.mao.service.EquipmentService;
import com.mao.service.ExportExcelService;
import com.mao.service.LaboratoryService;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

@Controller
@RequestMapping("equipment")
public class EquipmentController {
	
	@Resource
	private EquipmentService equipmentService;
	
	@Resource
	private LaboratoryService laboratoryService;
	
	@Resource
	private ExportExcelService exportExcelService;
	
	
	@RequestMapping("getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		model.addAttribute("equipmentLists",equipmentService.getAllEquipment());
		 System.out.println(JSON.toJSONString(equipmentService.getAllEquipment()));
		 return "equipment/listsEquipment";
				
	}
	
	/*@RequestMapping("/equipment/getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		equipmentService.showEquipmentByPage(request, model);
		 return "listsEquipment";
				
	}*/
	
	@RequestMapping("addEquipment1")
	 public String addEquipment1(HttpServletRequest request,Model model){
		
		model.addAttribute("laboratoryName",laboratoryService.getAllLaboratory());
		 return "equipment/addEquipment";
				
	}
	@RequestMapping("addEquipment")
	 public String addEquipment(HttpServletRequest request,Equipment equipment){
		equipmentService.addEquipment(equipment);
		System.out.println(JSON.toJSONString(equipment));
		 return "redirect:/equipment/getAllEquipment";
				
	}
	
	@RequestMapping(value="/updEquipment",method=RequestMethod.GET)
	public String updToTeacher(int updId,HttpServletRequest request){
		
		request.setAttribute("fequipment",equipmentService.findEquipmentById(updId));
		request.setAttribute("laboratoryNameList",laboratoryService.getAllLaboratory());
		return "equipment/updEquipment";			
	}
	
	@RequestMapping(value="updEquipment",method=RequestMethod.POST)
	public String updTeacher(Equipment equipment,HttpServletRequest request){
		
		System.out.println(JSON.toJSONString(equipment));
		equipmentService.updEquipment(equipment);		
		return "redirect:/equipment/getAllEquipment";			
	}
	
	/**
	 * 检查设备编号的唯一
	 * @param type
	 * @param out
	 * @param request
	 */
	@RequestMapping(value="/checkUnion")
	public void check(String type,PrintWriter out,HttpServletRequest request){
		String info = null;	
		System.out.println(type);
		if(equipmentService.findEquipmentByType(type)!=null){
			info="0";		
		}else{
			info="1";
			
		}
		out.write(info);
	}
	
	/**
	 * 获取使用的设备报表
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("getAllEquipmentUsed")
	 public String getAllEquipmentUsed(HttpServletRequest request,Model model){
		model.addAttribute("equipmentUesdLists",equipmentService.getAllEquipmentUsed());
		 System.out.println(JSON.toJSONString(equipmentService.getAllEquipmentUsed()));
		 return "equipment/listsEquipmentUsed";
				
	}
	
	/**
	 * 导出
	 * @param request
	 * @param response
	 * @param model
	 * @return 
	 * @throws Exception
	 */
	@RequestMapping("export")
	public String exportExcel(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception
	{	
		List<EquipmentUsed> equipmentList = equipmentService.getAllEquipmentUsed();
		/*String vaccinater = new String(request.getParameter("vaccinater").getBytes("iso8859-1"),"utf-8");
		String vaccine = new String (request.getParameter("vaccine").getBytes("iso8859-1"),"utf-8");
		registrationCondition.setInjectionDate("Manage");
		System.out.println(vaccinater+" "+vaccine);
		registrationCondition.setVaccinater(vaccinater);
		registrationCondition.setVaccine(vaccine);	*/	
		response.setContentType("application/binary;charset=ISO8859_1");
		try
		{
			ServletOutputStream outputStream = response.getOutputStream();
			String fileName = new String(("Registration").getBytes(), "ISO8859_1");
			response.setHeader("Content-disposition", "attachment; filename=" + fileName + ".xlsx");// 组装附件名称和格式
			String[] titles = { "设备名称", "设备编号", "设备型号","设备价格","制造厂家","实验室名","购买日期","已用年限" };
			exportExcelService.exportExcel(equipmentList, titles, outputStream);
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return null;
	}


}


