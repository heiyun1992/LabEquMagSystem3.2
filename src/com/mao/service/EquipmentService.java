

package com.mao.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.mao.pojo.Equipment;
import com.mao.pojo.EquipmentUsed;

/** 
 *Created by maozhongzhen on 2015��4��13�� . 
 */

public interface EquipmentService {
	
	public List<Equipment> getAllEquipment();
	
	public List<Equipment> getAllLoanEquipment();
	
	public List<EquipmentUsed> getAllEquipmentUsed();
	
	public boolean addEquipment(Equipment equipment);
	
	public Equipment findEquipmentById(int id);
	
	public Equipment findEquipmentByType(String type);
	
	public boolean updEquipment(Equipment equipment);
	
	 public  void showEquipmentByPage(HttpServletRequest request,Model model);

}


