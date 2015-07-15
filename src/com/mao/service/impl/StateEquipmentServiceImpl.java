package com.mao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.mao.dao.StateEquipmentDao;
import com.mao.pojo.StateEquipment;
import com.mao.service.StateEquipmentService;

/**
 * Created by maozhongzhen on 2015年5月24日.
 */
@Service //("stateEquipmentService")
public class StateEquipmentServiceImpl implements StateEquipmentService {

	@Autowired 
	private StateEquipmentDao stateEquipmentDao;
	
	
	@Override
	public boolean addStateEquipment(StateEquipment stateEquipment) {
		// TODO Auto-generated method stub
		System.out.println(JSON.toJSONString(stateEquipment));
		return stateEquipmentDao.addStateEquipment(stateEquipment);
	}


	@Override
	public List<StateEquipment> getAllStateEquipment() {
		// TODO Auto-generated method stub		
		return stateEquipmentDao.getAllStateEquipment();
	}


	@Override
	public boolean delStateEquipment(int id) {
		// TODO Auto-generated method stub
		return stateEquipmentDao.delStateEquipment(id);
	}

}
