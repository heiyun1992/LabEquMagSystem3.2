package com.mao.dao;

import java.util.List;

import com.mao.pojo.StateEquipment;

/**
 * Created by maozhongzhen on 2015年5月23日.
 */
public interface StateEquipmentDao {
	
	public boolean addStateEquipment(StateEquipment stateEquipment);
	
	public List<StateEquipment> getAllStateEquipment();
	
	public boolean delStateEquipment(int id);

}
