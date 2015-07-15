package com.mao.service;

import java.util.List;

import com.mao.pojo.ScrapedEquipment;

/**
 * Created by maozhongzhen on 2015年4月29日.
 */
public interface ScrapedEquipmentService {
	
	public boolean addScrapedEquipment(ScrapedEquipment scrapedEquipment);
	
	public List<ScrapedEquipment> getAllScrapedEquipment();
	
	public ScrapedEquipment getScrapedEquipmentById(int id);

}
