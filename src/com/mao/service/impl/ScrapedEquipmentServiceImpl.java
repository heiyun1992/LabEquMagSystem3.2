package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mao.dao.ScrapedEquipmentDao;
import com.mao.pojo.ScrapedEquipment;
import com.mao.service.ScrapedEquipmentService;

/**
 * Created by maozhongzhen on 2015年4月29日.
 */

@Service("scrapedEquipmentService")
public class ScrapedEquipmentServiceImpl implements ScrapedEquipmentService {
	
	@Resource
	private ScrapedEquipmentDao scrapedEquipmentDao;

	@Override
	public boolean addScrapedEquipment(ScrapedEquipment scrapedEquipment) {
		// TODO Auto-generated method stub
		return scrapedEquipmentDao.addScrapedEquipment(scrapedEquipment);
	}

	@Override
	public List<ScrapedEquipment> getAllScrapedEquipment() {
		// TODO Auto-generated method stub
		return scrapedEquipmentDao.getAllScrapedEquipment();
	}

	@Override
	public ScrapedEquipment getScrapedEquipmentById(int id) {
		// TODO Auto-generated method stub
		return scrapedEquipmentDao.getScrapedEquipmentById(id);
	}	
}
