package com.mao.pojo;

public class StateEquipment {
	
	private int id;
	private int equipment_id;
	private String describement;
	private int responsible_person;
	private int admin_id;
	private Equipment equipment;
	private Admin admin;
	private Teacher teacher;
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
	public String getDescribement() {
		return describement;
	}
	public void setDescribement(String describement) {
		this.describement = describement;
	}
	
	public int getResponsible_person() {
		return responsible_person;
	}
	public void setResponsible_person(int responsible_person) {
		this.responsible_person = responsible_person;
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
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	
	

}
