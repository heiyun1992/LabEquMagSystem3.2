package com.mao.service;

import java.util.List;

import com.mao.pojo.Laboratory;

/**
 * Created by maozhongzhen on 2015年5月23日.
 */
public interface LaboratoryService {
	
	public boolean addLaboratory(Laboratory laboratory);
	
	public List<Laboratory> getAllLaboratory();
	
	public boolean delLaboratoryById(int id);
	
	public Laboratory getLaboratoryByName(String name);

}
