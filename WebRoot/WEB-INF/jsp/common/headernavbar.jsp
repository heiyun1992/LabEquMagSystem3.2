<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <a class="brand" href="#">
                实验室设备管理平台 </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="${pageScope.basePath }media/image/menu-toggler.png" alt=""/>
            </a>
            <ul class="nav pull-right">
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="${pageScope.basePath }media/image/avatar1_small.jpg"/>
                        <span class="username">${currentUser.name}</span>
                        
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                    
                     	<%-- <c:choose>
							<c:when test="${currentUser.role=='一级'||currentUser.role=='二级'||currentUser.role=='三级'}"> --%>
								<li><a href="<%=request.getContextPath() %>/admin/updateAdmin1"><i class="icon-user"></i> 修改密码</a></li>
							<%-- </c:when>
							<c:otherwise>
								<li><a href="${pageScope.basePath }teacher/updTeacherPass"><i class="icon-user"></i> 修改密码</a></li>
							</c:otherwise>
						</c:choose> --%>
                         <li><a href="${pageScope.basePath }user/loginout"><i class="icon-calendar" ></i> 退出系统</a></li>
                    </ul>
                </li>
            </ul>
        </div>