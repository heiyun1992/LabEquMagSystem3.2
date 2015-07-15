<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="page-sidebar-menu">
				<li>
					<br>
				</li>
				<c:if test="${admin.role!='四级'}">
				<li class="">
					<a href="">
						<i class="icon-briefcase"></i>
						<span class="title">仪器信息管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }equipment/getAllEquipment"><i class="icon-star"></i> 仪器列表</a>
						</li>
						<li >
							<a href="${pageScope.basePath }equipment/addEquipment1"><i class="icon-star"></i> 添加仪器</a>
						</li>
											
					</ul>
				</li>
				<li class="">
					<a href="">
						<i class="icon-briefcase"></i>
						<span class="title">仪器租借管理</span>
					</a>
					<ul class="sub-menu">						
						<li >
							<a href="${pageScope.basePath }loan/getAllLoanEquipment"><i class="icon-list-alt"></i> 租借仪器</a>
						</li>
						<li >
							<a href="${pageScope.basePath }loan/addLoanEquipment1"><i class="icon-list-alt"></i> 租借登记</a>
						</li>
						<li >
							<a href="${pageScope.basePath }loanHistory/getAllLoanHistory"><i class="icon-table"></i> 历史记录</a>
						</li>
					</ul>
				</li>
				
				<li class="">
					<a href="">
						<i class="icon-briefcase"></i>
						<span class="title">仪器报废管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }scrap/getAllEquipment"><i class="icon-list-alt"></i> 报废登记</a>
						</li>						
						<li >
							<a href="${pageScope.basePath }scrap/getAllScrapedEquipment"><i class="icon-list-alt"></i> 报废仪器</a>
						</li>
						
					</ul>
				</li>
				
				
				
				<li class="">
					<a href="">
						<i class="icon-briefcase"></i>
						<span class="title">仪器损坏管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }state/getAllEquipment"><i class="icon-list-alt"></i> 损坏登记</a>
						</li>						
						<li >
							<a href="${pageScope.basePath }state/getAllStateEquipment"><i class="icon-list-alt"></i> 损坏仪器</a>
						</li>
						
					</ul>
				</li>
				
				<li class="">
					<a href="">
						<i class="icon-briefcase"></i>
						<span class="title">实验室管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }laboratory/getAllLaboratory"><i class="icon-list-alt"></i>实验室列表</a>
						</li>						
						<li >
							<a href="${pageScope.basePath }laboratory/addLaboratory"><i class="icon-list-alt"></i>添加实验室</a>
						</li>
						
					</ul>
				</li>
				
				</c:if>
				
				
				<c:if test="${admin.role=='一级'}">
				<li class="">
					<a href="">
						<i class="icon-user"></i>
						<span class="title">管理员管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }admin/getAllAdmin"><i class="icon-table"></i> 管理员列表</a>
						</li>
						<li >
							<a href="${pageScope.basePath }admin/addAdmin1"><i class="icon-table"></i> 添加管理员</a>
						</li>
						<!-- <li >
							<a href="#"><i class="icon-table"></i> 权限管理</a>
						</li> -->
					</ul>
				</li>
				
				
				</c:if>	
				
				
				
				<c:if test="${admin.role!='四级'}">
				<li class="">
					<a href="">
						<i class="icon-user"></i>
						<span class="title">教师管理</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="${pageScope.basePath }teacher/getAllTeacher"><i class="icon-table"></i> 教师列表</a>
						</li>
						<li >
							<a href="${pageScope.basePath }teacher/addTeacher"><i class="icon-table"></i> 添加教师</a>
						</li>
						<!-- <li >
							<a href="#"><i class="icon-table"></i> 查找教师</a>
						</li> -->
					</ul>
				</li>	
				
				<li class="">			
					<a href="<%=request.getContextPath() %>/admin/updateAdmin1">
						<i class="icon-lock"></i>
						<span class="title">修改密码</span>
				    </a>
				</li>									

				<li class="">
					<a href="<%=request.getContextPath() %>/equipment/getAllEquipmentUsed">
					<i class="icon-magic"></i> 
					<span class="title">报表统计</span>
					</a>
				</li>
				
				</c:if>
				
				<!--普通用户菜单-->
				<c:if test="${admin.role=='四级'}">
				<li class="">			
					<a href="${pageScope.basePath }teacher/getAllEquipment">
						<i class="icon-briefcase"></i>
						<span class="title">仪器设备列表</span>
				    </a>
				</li>	
				
				<li class="">			
					<a href="${pageScope.basePath }teacher/teacherLoanHistory">
						<i class="icon-briefcase"></i>
						<span class="title">个人租借记录</span>
				    </a>
				</li>
				
				<li class="">			
					<a href="${pageScope.basePath }teacher/updInfomation">
						<i class="icon-user"></i>
						<span class="title">修改个人资料</span>
				    </a>
				</li>		
				<li class="">			
					<a href="${pageScope.basePath }teacher/updTeacherPass">
						<i class="icon-lock"></i>
						<span class="title">修改密码</span>
				    </a>
				</li>							
				
				</c:if>
				
				
				</ul>
