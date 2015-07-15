package com.mao.dao;

import java.util.List;

import com.mao.pojo.LoanHistory;
import com.mao.pojo.Teacher;

/**
 * Created by maozhongzhen on 2015年4月25日.
 */
public interface LoanHistoryDao {
	
	public List<LoanHistory> getAllLoanHistory();
	
	public List<LoanHistory> serhLoanHistory(Teacher teacher);

}
