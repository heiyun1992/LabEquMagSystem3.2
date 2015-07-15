package com.mao.service;

import java.util.List;

import com.mao.pojo.StateEquipment;

/**
 * Created by maozhongzhen on 2015年5月24日.
 */
public interface StateEquipmentService {
	
	public boolean addStateEquipment(StateEquipment stateEquipment);
	
	public List<StateEquipment> getAllStateEquipment();
	
	public boolean delStateEquipment(int id);

}
