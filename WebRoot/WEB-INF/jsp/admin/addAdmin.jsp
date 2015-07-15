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
	<title>添加管理员</title>
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
							 <small>添加管理员</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">首页</a>
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="#">管理员管理</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">创建管理员</a></li>
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
									<span class="hidden-480">&nbsp;&nbsp;创建管理员</span>
								</div>
							</div>
							<div class="portlet-body form">
								<div class="tabbable portlet-tabs">
									<div class="tab-content">
										<div class="tab-pane active" id="portlet_tab1">
                                       <div  class="row">
                                           <div class="span2"></div>
										   <div class="span8">
											<form action="<%=request.getContextPath() %>/admin/addAdmin" class="form-horizontal" method="post">
												<div class="control-group"  style="margin-top: 130px">
													<label class="control-label">管理账号</label>
													<div class="controls">
														<input type="text" name="name" id="name" placeholder="" class="span8" />
														<span class="help-block warning" id="name1"></span>
														<span><sf:errors path="name"></sf:errors></span>	
													</div>
												</div>																														
												
												<!-- ==========================================================================================-->
												<div class="control-group">
													<label class="control-label">账号密码</label>
													<div class="controls">
														<input type="password"  name="password" class="span8" />
														<span class="help-block" id="password1"></span>
													</div>
												</div>																							
												
												<div class="control-group">
													<label class="control-label">角色权限</label>
													<div class="controls">
														<select name="role" class="span8" tabindex="1">
															<option value=" "></option>
															<option value="一级">一级管理员</option>
        													<option value="二级">二级管理员</option>
        													<option value="三级">三级管理员</option>
														</select>
													</div>
												</div>																																			
																							
                                              <div class="row">
												<div class="span3"></div>
												  <div class="span9">
												  	&nbsp;&nbsp;&nbsp;<!-- <a class="btn blue" data-toggle="modal" href="./简历一览.html"><i class="icon-ok"></i> 保存</a> -->
												  	<button  type="submit" class="btn blue"><i class="icon-ok"></i>保存</button>
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

										<div class="tab-pane " id="portlet_tab2">
											<form>
												<div class="controls controls-row">
													<input class="span12 m-wrap" type="text" placeholder=".span12" />
												</div>
												<div class="controls controls-row">
													<input class="span11 m-wrap" type="text" placeholder=".span11" />
													<input class="span1 m-wrap" type="text" placeholder=".span1" />
												</div>
												<div class="controls controls-row">
													<input class="span10 m-wrap" type="text" placeholder=".span10" />
													<input class="span2 m-wrap" type="text" placeholder=".span2" />
												</div>
												<div class="controls controls-row">
													<input class="span9 m-wrap" type="text" placeholder=".span9" />
													<input class="span3 m-wrap" type="text" placeholder=".span3" />
												</div>
												<div class="controls controls-row">
													<input class="span8 m-wrap" type="text" placeholder=".span8" />
													<input class="span4 m-wrap" type="text" placeholder=".span4" />
												</div>
												<div class="controls controls-row">
													<input class="span7 m-wrap" type="text" placeholder=".span7" />
													<input class="span5 m-wrap" type="text" placeholder=".span5" />
												</div>
												<div class="controls controls-row">
													<input class="span6 m-wrap" type="text" placeholder=".span6" />
													<input class="span6 m-wrap" type="text" placeholder=".span6" />
												</div>
												<div class="controls controls-row">
													<input class="span5 m-wrap" type="text" placeholder=".span5" />
													<input class="span7 m-wrap" type="text" placeholder=".span7" />
												</div>
												<div class="controls controls-row">
													<input class="span4 m-wrap" type="text" placeholder=".span4" />
													<input class="span8 m-wrap" type="text" placeholder=".span8" />
												</div>
												<div class="controls controls-row">
													<input class="span3 m-wrap" type="text" placeholder=".span3" />
													<input class="span9 m-wrap" type="text" placeholder=".span9" />
												</div>
												<div class="controls controls-row">
													<input class="span2 m-wrap" type="text" placeholder=".span2" />
													<input class="span10 m-wrap" type="text" placeholder=".span10" />
												</div>
												<div class="controls controls-row">
													<input class="span1 m-wrap" type="text" placeholder=".span1" />
													<input class="span11 m-wrap" type="text" placeholder=".span11" />
												</div>
												<div class="controls controls-row">
													<input class="span2 m-wrap" type="text" placeholder=".span2" />
													<input class="span3 m-wrap" type="text" placeholder=".span3" />
													<input class="span4 m-wrap" type="text" placeholder=".span4" />
													<input class="span2 m-wrap" type="text" placeholder=".span2" />
													<input class="span1 m-wrap" type="text" placeholder=".span1" />
												</div>
											</form>
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
	<script>
		jQuery(document).ready(function() {   
		   // initiate layout and plugins
		   App.init();
		});
	</script>
	<script type="text/javascript" > 
	$(document).ready( function(){         
          				$("#name").blur(function(){  
						var params=$("#name").val();
						if(params==""){
							$("#name1").html("账号不能为空！！！").css("color","red");
						}else{
						$.ajax({  url:"check", 
						type:"GET",
						data:"name="+params,
						 success:function(info){
							//var json=eval(info); 
							 //var str=json.info; 
							//alert(info);
							if(info=="0"){
								$("#name1").html("账户已存在！！！").css("color","red");
							}else{
								$("#name1").html("");
							}
						},
						error:function(){
				            alert("system error");
				          }
						});
						}
						}); 
          				
          				$("input[name='password']").blur(function(){  
          					var password=$("input[name='password']").val();
          					if(password==""){
          						$("#password1").html("密码不能为空！！！").css("color","red");
          					}else{
          						$("#password1").html("");
          					}
          				});
          				});	
	

  	</script>

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>
<!-- END BODY -->

</html>