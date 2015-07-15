package com.mao.dao;

import java.util.List;

import com.mao.pojo.Admin;

public interface AdminDao{
	
	public boolean addAdmin(Admin admin);
	
	public boolean delAdminById(int id);
	
	public Admin loginAdmin(Admin admin);
	
	public Admin serhAdminById(int id);
	
	public List<Admin> getAllAdmin();
	
	public boolean updateAdmin(Admin admin);
	
	public Admin findAdminByName(String name);
	
	
	

}
