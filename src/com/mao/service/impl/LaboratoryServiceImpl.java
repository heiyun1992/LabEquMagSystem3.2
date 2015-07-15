package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mao.dao.LaboratoryDao;
import com.mao.pojo.Laboratory;
import com.mao.service.LaboratoryService;

/**
 * Created by maozhongzhen on 2015年5月23日.
 */

@Service("laboratoryService")
public class LaboratoryServiceImpl implements LaboratoryService {
	
	
    @Resource
    private LaboratoryDao laboratoryDao;
    
	@Override
	public boolean addLaboratory(Laboratory laboratory) {
		// TODO Auto-generated method stub
		return laboratoryDao.addLaboratory(laboratory);
	}

	@Override
	public List<Laboratory> getAllLaboratory() {
		// TODO Auto-generated method stub
		return laboratoryDao.getAllLaboratory();
	}

	@Override
	public boolean delLaboratoryById(int id) {
		// TODO Auto-generated method stub
		return laboratoryDao.delLaboratoryById(id);
	}

	@Override
	public Laboratory getLaboratoryByName(String name) {
		// TODO Auto-generated method stub
		return laboratoryDao.getLaboratoryByName(name);
	}

}
