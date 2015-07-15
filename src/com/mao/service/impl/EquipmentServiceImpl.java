

package com.mao.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mao.dao.EquipmentDao;
import com.mao.pojo.Equipment;
import com.mao.pojo.EquipmentUsed;
import com.mao.service.EquipmentService;
import com.mao.util.PageBean;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

@Service("equipmentService")
public class EquipmentServiceImpl implements EquipmentService {
	
	@Resource
	private EquipmentDao equipmentDao;

	@Override
	public List<Equipment> getAllEquipment() {
		// TODO Auto-generated method stub
		return equipmentDao.getAllEquipment();
	}

	@Override
	public boolean addEquipment(Equipment equipment) {
		// TODO Auto-generated method stub
		return equipmentDao.addEquipment(equipment);
	}

	@Override
	public void showEquipmentByPage(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		 String pageNow = request.getParameter("pageNow");  
		  
		    PageBean page = null;  
		  
		    List<Equipment> lists = new ArrayList<Equipment>();  
		  
		    int totalCount = (int) equipmentDao.getEquipmentCount();  
		  
		    if (pageNow != null) {  
		        page = new PageBean(totalCount, Integer.parseInt(pageNow));  
		        lists  = this.equipmentDao.selectEquipmentByPage(page.getStartPos(), page.getPageSize());  
		    } else {  
		        page = new PageBean(totalCount, 1);  
		        lists  = this.equipmentDao.selectEquipmentByPage(page.getStartPos(), page.getPageSize());  
		    }  
		  
		    model.addAttribute("equipmentLists", lists );  
		    model.addAttribute("page", page); 
	}

	@Override
	public boolean updEquipment(Equipment equipment) {
		// TODO Auto-generated method stub
		return equipmentDao.updEquipment(equipment);
	}

	@Override
	public Equipment findEquipmentById(int id) {
		// TODO Auto-generated method stub
		return equipmentDao.findEquipmentById(id);
	}

	@Override
	public List<Equipment> getAllLoanEquipment() {
		// TODO Auto-generated method stub
		return equipmentDao.getAllLoanEquipment();
	}

	@Override
	public Equipment findEquipmentByType(String type) {
		// TODO Auto-generated method stub
		return equipmentDao.findEquipmentByType(type);
	}

	@Override
	public List<EquipmentUsed> getAllEquipmentUsed() {
		// TODO Auto-generated method stub
		return equipmentDao.getAllEquipmentUsed();
	}



}


