package com.mao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mao.pojo.Equipment;
import com.mao.pojo.EquipmentUsed;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

public interface EquipmentDao {
	
	/**
	 * 
	 * @return 
	 */
	public List<Equipment> getAllEquipment();
	
	
	public List<Equipment> getAllLoanEquipment();
	
	public List<EquipmentUsed> getAllEquipmentUsed();
	
	
	/**
	 * 
	 * @param equipment
	 * @return ����������豸
	 */
	public boolean addEquipment(Equipment equipment);
	
	public boolean updEquipment(Equipment equipment);
	
	public Equipment findEquipmentById(int id);
	
	public Equipment findEquipmentByType(String type);
	

	
	
	/**
	 * 
	 * @param startPos
	 * @param pageSize
	 * @return ��ҳ��ʾ����
	 */
	 public List<Equipment> selectEquipmentByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);  
	   

	 /**
	  * 
	  * @retur��ȡ�������ܼ�¼
	  */
	 public long getEquipmentCount();  

}


