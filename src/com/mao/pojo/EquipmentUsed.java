package com.mao.pojo;

public class EquipmentUsed {
	
	private int id;
	private String name;
	private String type;
	private String laboratoryId;
	private String models;
	private String price;
	private String vender;	
	private String purchase_date;
	private String used_date;
	
	public String getUsed_date() {
		return used_date;
	}
	public void setUsed_date(String used_date) {
		this.used_date = used_date;
	}
	public int getId() {
		return id;
	}
	public String getLaboratoryId() {
		return laboratoryId;
	}
	public void setLaboratoryId(String laboratoryId) {
		this.laboratoryId = laboratoryId;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getModels() {
		return models;
	}
	public void setModels(String models) {
		this.models = models;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getVender() {
		return vender;
	}
	public void setVender(String vender) {
		this.vender = vender;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}

}
