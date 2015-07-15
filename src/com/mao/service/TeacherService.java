package com.mao.service;

import java.util.List;

import com.mao.pojo.LoanHistory;
import com.mao.pojo.Teacher;

/**
 * Created by maozhongzhen on 2015年4月23日.
 */


public interface TeacherService {
	
	public List<Teacher> getAllTeacher();
	
	public Teacher loginTeacher(Teacher teacher);
	
	public Teacher serhTeacherById(int id);
	
	public Teacher serhTeacherByObject(Teacher teacher);
	
	public List<LoanHistory> serhLoanHistory(Teacher teacher);
	
	public Teacher findTeacherByTeacher_num(String teacher_num);
	
	public boolean addTeacher(Teacher teacher);
	
	public boolean updTeacher(Teacher teacher);
	
	public boolean delTeacher(int id);


}
