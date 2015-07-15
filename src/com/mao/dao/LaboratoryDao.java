package com.mao.dao;

import java.util.List;

import com.mao.pojo.Laboratory;

/**
 * Created by maozhongzhen on 2015年5月23日.
 */
public interface LaboratoryDao {
	
	/**
	 * 
	 * @param laboratory
	 * @return 添加实验室
	 */
	public boolean addLaboratory(Laboratory laboratory);
	
	/**
	 * 
	 * @return 取得全部的实验室
	 */
	public List<Laboratory> getAllLaboratory();
	
	/**
	 * 
	 * @param id
	 * @return 删除实验室
	 */
	public boolean delLaboratoryById(int id);
	
	/**
	 * 
	 * @param name
	 * @return 按名称查找实验室
	 */
	public Laboratory getLaboratoryByName(String name);

}
