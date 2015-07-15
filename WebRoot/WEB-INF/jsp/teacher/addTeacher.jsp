<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>


<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>
	<meta charset="utf-8" />
	<title>添加教师</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="${pageScope.basePath }media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${pageScope.basePath }media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<link rel="shortcut icon" href="${pageScope.basePath }media/image/favicon.ico" />
</head>


<body class="page-header-fixed">
	<div class="header navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <%@include file="../common/headernavbar.jsp"%> 
    </div>
</div>
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<%@include file="../common/sidebarmenu.jsp"%> 
		</div>
		<div class="page-content">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<h3 class="page-title">
							仪器工厂
							 <small>添加教师</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">首页</a>
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="#">教师管理</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">添加教师</a></li>
						</ul>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE FORM PORTLET-->   
						<div class="portlet box blue tabbable">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>
									<span class="hidden-480">&nbsp;&nbsp;添加教师信息</span>
								</div>
							</div>
							<div class="portlet-body form">
								<div class="tabbable portlet-tabs">
									<div class="tab-content">
										<div class="tab-pane active" id="portlet_tab1">
                                       <div  class="row">
                                           <div class="span2"></div>
										   <div class="span8">
											<form action="<%=request.getContextPath() %>/teacher/addTeacher" name="Form1"  class="form-horizontal" method="post">
												<div class="control-group"  style="margin-top: 130px">
													<label class="control-label">姓&nbsp;&nbsp;&nbsp;名:</label>
													<div class="controls">
														<input type="text" name="name" placeholder="" class="span8" />
														<span class="help-block" id="name"></span>
													</div>
												</div>	
												
												<div class="control-group">
													<label class="control-label">性&nbsp;&nbsp;&nbsp;别:</label>
													<div class="controls">
														<label class="radio">
															<input type="radio" name="sex" value="男" checked/>
															男
														</label>
														<label class="radio">
															<input type="radio" name="sex" value="女" />
															女
														</label>
													</div>													
												</div>
												
												<div class="control-group">
													<label class="control-label">教&nbsp;学&nbsp;编&nbsp;号:</label>
													<div class="controls">
														<input type="text" name="teacher_num" placeholder="" class="span8" />
														<span class="help-block" id="teacher_num"></span>
													</div>
												</div>																											
																								
												<div class="control-group">
													<label class="control-label">手&nbsp;机&nbsp;号&nbsp;码:</label>
													<div class="controls">
														<input type="text" name="phone_num" placeholder="" class="span8" />
														<span class="help-block" id="phone_num"></span>
														<!-- <span class="help-block">请输入手机号码</span> -->
													</div>
												</div>	
												
												<div class="control-group">
													<label class="control-label">邮&nbsp;箱&nbsp;地&nbsp;址:</label>
													<div class="controls">
														<input type="text" name="email"  placeholder="" class="span8" />
														<span class="help-block" id="email"></span>
														<!-- <span class="help-block" id="email">请填写有效的邮箱地址</span> -->
													</div>
												</div>	
												
												<div class="control-group">
													<label class="control-label">登&nbsp;陆&nbsp;密&nbsp;码:</label>
													<div class="controls">
														<input type="password" name="password" placeholder="" class="span8" />
														<span class="help-block" id="password"></span>
														<!-- <span class="help-block">密码须已首字母开头并不少于6位</span> -->
													</div>
												</div>																				
												
																																																																																														
                                              <div class="row">
												<div class="span3"></div>
												  <div class="span9">
												  	&nbsp;&nbsp;&nbsp;<button  type="submit" class="btn blue"><i class="icon-ok"></i>保存</button>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


													<button type="reset" class="btn"><i class="icon-remove"></i>&nbsp;&nbsp;重置</button>
												  </div>
												</div>
											</form>
</div>
											<!-- END FORM-->  
										</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<%@include file="../common/footer.jsp"%> 
    </div>
	<!-- END FOOTER -->

	<script src="${pageScope.basePath }media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${pageScope.basePath }media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${pageScope.basePath }media/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${pageScope.basePath }media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.uniform.min.js" type="text/javascript" ></script>
	<script src="${pageScope.basePath }media/js/app.js"></script>     
	<script type="text/javascript" src="${pageScope.basePath }media/js/select2.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/DT_bootstrap.js"></script>
    <script type="text/javascript" src="${pageScope.basePath }media/js/bootstrap-datepicker.js"></script>
	<script src="${pageScope.basePath }media/js/table-editable.js"></script> 
    <script src="${pageScope.basePath }media/js/ui-modals.js"></script> 
    <script src="${pageScope.basePath }media/js/form-components.js"></script>  
	<script>
	
	jQuery(document).ready(function() {       
		   App.init();
		 //  TableEditable.init();
		   //FormComponents.init();
		});
		jQuery(document).ready(function() {   
		   // initiate layout and plugins
		   App.init();
		});
	</script>
	
	<script type="text/javascript" > 

	$(document).ready( function(){ 
		$("input[name='name']").blur(function(){  
			//alert("11");
					var params=$("input[name='name']").val(); 
					
					if(params==""){
						$("#name").html("姓名不能为空！！！").css("color","red");
					}else{
						$("#name").html("");				
					}
				});
					
					$("input[name='phone_num']").blur(function(){  
						
								var params=$("input[name='phone_num']").val(); 
								
								if(params==""){
									$("#phone_num").html("手机号码不能为空！！！").css("color","red");
								}else{
									$("#phone_num").html("");				
								}
					});
					
					$("input[name='email']").blur(function(){  
						
						var params=$("input[name='email']").val(); 
						
						if(params==""){
							$("#email").html("邮箱不能为空！！！").css("color","red");
						}else{
							$("#email").html("");				
						}
			});
		$("input[name='password']").blur(function(){  
						
						var params=$("input[name='password']").val(); 
						
						if(params==""){
							$("#password").html("密码不能为空！！！").css("color","red");
						}else{
							$("#password").html("");				
						}
			});
			$("input[name='teacher_num']").blur(function(){  
				//alert("11");
						var params=$("input[name='teacher_num']").val(); 
						//alert(params);
						if(params==""){
							$("#teacher_num").html("编号不能为空！！！").css("color","red");
						}else{
						$.ajax({ 
							url:"findTeacherByTeacher_num", 
							type:"GET",
							data:"teacher_num="+params,
							 success:function(info){						
								if(info=="0"){
									$("#teacher_num").html("编号已存在，请重输！！！").css("color","red");
								}else{
									$("#teacher_num").html("");
								}
							},
						error:function(){
				            alert("system error");
				          }
						});
						}
						}); 
          				});		
  	</script>
          					

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>
<!-- END BODY -->

</html>