package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.mao.dao.LoanHistoryDao;
import com.mao.dao.TeacherDao;
import com.mao.pojo.LoanHistory;
import com.mao.pojo.Teacher;
import com.mao.service.TeacherService;

/**
 * Created by maozhongzhen on 2015��4��23��.
 */

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	
	@Resource
	private TeacherDao teacherDao;
	
	
	@Resource
	private LoanHistoryDao loanHistoryDao;

	@Override
	public List<Teacher> getAllTeacher() {
		// TODO Auto-generated method stub
		return teacherDao.getAllTeacher();
	}

	@Override
	public boolean addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.addTeacher(teacher);
	}

	@Override
	public boolean updTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		System.out.println(JSON.toJSONString(teacher));
		return teacherDao.updTeacher(teacher);
	}

	@Override
	public Teacher serhTeacherById(int id) {
		// TODO Auto-generated method stub
		return teacherDao.serhTeacherById(id);
	}

	@Override
	public boolean delTeacher(int id) {
		// TODO Auto-generated method stub
		return teacherDao.delTeacher(id);
	}

	@Override
	public Teacher loginTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.loginTeacher(teacher);
	}

	@Override
	public Teacher serhTeacherByObject(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.serhTeacherByObject(teacher);
	}

	@Override
	public List<LoanHistory> serhLoanHistory(Teacher teacher) {
		// TODO Auto-generated method stub
		return loanHistoryDao.serhLoanHistory(teacher);
	}

	

	@Override
	public Teacher findTeacherByTeacher_num(String teacher_num) {
		// TODO Auto-generated method stub
		return teacherDao.findTeacherByTeacher_num(teacher_num);
	}

}
