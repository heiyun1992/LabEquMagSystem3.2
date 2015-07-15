package com.mao.pojo;

public class ScrapedEquipment {
	
	private int id;
	private int equipment_id;
	private String checked_date;
	private String admin_id;
	private String scrap_describe;
	private Equipment equipment;
	private Admin admin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEquipment_id() {
		return equipment_id;
	}
	public void setEquipment_id(int equipment_id) {
		this.equipment_id = equipment_id;
	}
	public String getChecked_date() {
		return checked_date;
	}
	public void setChecked_date(String checked_date) {
		this.checked_date = checked_date;
	}
	
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getScrap_describe() {
		return scrap_describe;
	}
	public void setScrap_describe(String scrap_describe) {
		this.scrap_describe = scrap_describe;
	}
	public Equipment getEquipment() {
		return equipment;
	}
	public void setEquipment(Equipment equipment) {
		this.equipment = equipment;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
	

}
