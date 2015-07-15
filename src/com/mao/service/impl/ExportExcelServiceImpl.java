package com.mao.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

import com.mao.pojo.EquipmentUsed;
import com.mao.service.ExportExcelService;
import com.mao.util.ExportUtil;

/**
 * Created by maozhongzhen on 2015年5月28日.
 */
@Service("exportExcelService")
public class ExportExcelServiceImpl implements ExportExcelService {
	public void exportExcel(List<EquipmentUsed> list,String [] titles,ServletOutputStream outputStream){
			// 创建一个workbook 对应一个excel应用文件
			XSSFWorkbook workBook = new XSSFWorkbook();
			// 在workbook中添加一个sheet,对应Excel文件中的sheet
			XSSFSheet sheet = workBook.createSheet("sheet1");
			ExportUtil exportUtil = new ExportUtil(workBook, sheet);
			XSSFCellStyle headStyle = exportUtil.getHeadStyle();
			XSSFCellStyle bodyStyle = exportUtil.getBodyStyle();
			// 构建表头
			XSSFRow headRow = sheet.createRow(0);
			XSSFCell cell = null;
			for (int i = 0; i < titles.length; i++)
			{
				cell = headRow.createCell(i);
				cell.setCellStyle(headStyle);
				cell.setCellValue(titles[i]);
			}
			// 构建表体数据
			if (list != null && list.size() > 0)
			{
				for (int j = 0; j < list.size(); j++)
				{
					XSSFRow bodyRow = sheet.createRow(j + 1);
					EquipmentUsed equipmentUsed = list.get(j);

					cell = bodyRow.createCell(0);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getName());

					cell = bodyRow.createCell(1);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getType());

					cell = bodyRow.createCell(2);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getModels());
					//"设备名称", "设备编号", "设备型号","设备价格","制造厂家","实验室名","购买日期","已用年限"
					cell = bodyRow.createCell(3);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getPrice());
					
					cell = bodyRow.createCell(4);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getVender());
					
					cell = bodyRow.createCell(5);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getLaboratoryId());
					
					cell = bodyRow.createCell(6);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getPurchase_date());
					
					cell = bodyRow.createCell(7);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(equipmentUsed.getUsed_date());
					
					
				}
			}
			try
			{
				workBook.write(outputStream);
				outputStream.flush();
				outputStream.close();
			}
			catch (IOException e)
			{
				e.printStackTrace();
			}
			finally
			{
				try
				{
					outputStream.close();
				}
				catch (IOException e)
				{
					e.printStackTrace();
				}
			}

		}
}
