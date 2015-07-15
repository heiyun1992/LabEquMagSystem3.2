package com.mao.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.alibaba.fastjson.JSON;
import com.mao.pojo.User;
import com.mao.service.UserService;



//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})

public class TestMyBatis {
	
	private ApplicationContext ac ;
	
	@Resource
	private UserService  userService;		
	
	@Before
	public void before() {
		
		
		//**
		// ClassPathXmlApplicationContext
		//*
		// û��ǰ׺��Ĭ��Ϊ��Ŀ��classpath�����·��
		ac= new ClassPathXmlApplicationContext("spring-mybatis.xml");
		
		// ǰ׺classpath����ʾ������Ŀ��classpath�����·��
		//ac = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
		
		// ʹ��ǰ׺file ��ʾ�����ļ��ľ���·��
	 //	ac = new ClassPathXmlApplicationContext("file:D:/spring-mybatis.xml");
		
		// ����ͨ����ļ�����
		//ac = new ClassPathXmlApplicationContext("*mybatis.xml");
		
		// ���ļ�����
		/*String[] xmlCfg = new String[] { "classpath:base.spring.xml","spring-mybatis.xml" };
		ac = new ClassPathXmlApplicationContext(xmlCfg);*/
		
		
		// FileSystemXmlApplicationContext
		
		// ǰ׺classpath����ʾ������Ŀ��classpath�����·��
		//ac = new FileSystemXmlApplicationContext("classpath:spring-mybatis.xml"); 
		// Ĭ��Ϊ��Ŀ����·�� ����Ŀ�ĸ�Ŀ¼
		//ac =new FileSystemXmlApplicationContext("src/spring-mybatis.xml"); 
		// ʹ��ǰ׺file ��ʾ�����ļ��ľ���·��
		// ac = new FileSystemXmlApplicationContext(
		// "file:D:/spring-mybatis.xml");
		
		userService=(UserService)ac.getBean("userService");
	}
	
	@Test
	public void test2() {
		 //System.out.println(JSON.toJSONString( assetService.deleteAssetById(20)));
		User user=new User();
		user.setName("mao");
		user.setPassword("123");
		 System.out.println(JSON.toJSONString(userService.login(user)));
	
	}	
	
}

