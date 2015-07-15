package com.mao.service;

import java.util.List;

import javax.servlet.ServletOutputStream;

import com.mao.pojo.EquipmentUsed;

/**
 * Created by maozhongzhen on 2015年5月28日.
 */
public interface ExportExcelService {
	public void exportExcel(List<EquipmentUsed> equipmentList,String [] titles,ServletOutputStream outputStream);
}
