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
	<title>修改教师信息</title>
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
							 <small>修改密码</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">首页</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">修改密码</a></li>
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
									<span class="hidden-480">&nbsp;&nbsp;修改密码</span>
								</div>
							</div>
							<div class="portlet-body form">
								<div class="tabbable portlet-tabs">
									<div class="tab-content">
										<div class="tab-pane active" id="portlet_tab1">
                                       <div  class="row">
                                           <div class="span2"></div>
										   <div class="span8">
											<form action="<%=request.getContextPath() %>/teacher/updInfomation" name="Form1"  class="form-horizontal" method="post">								
																						
											    <div class="control-group hidden" >
													<label class="control-label">id:</label>
													<div class="controls">
														<input type="password" name="id" value="${currentUser.id}" placeholder="" class="span8" />										
													</div>
												</div>	
												
												<div class="control-group hidden"  >
													<label class="control-label">姓&nbsp;&nbsp;&nbsp;名:</label>
													<div class="controls">
														<input type="text" name="name" value="${currentUser.name}" placeholder="" class="span8" />
														
														<input type="text" name="sex" value="${currentUser.sex}" />
																
														<input type="text" name="teacher_num" value="${currentUser.teacher_num}" placeholder="" class="span8" />
														
														<input type="text" name="phone_num" value="${currentUser.phone_num}" placeholder="" class="span8" />
														
														<input type="text" name="email" placeholder="" value="${currentUser.email}" class="span8" />
														
												</div>	
												</div>
											
												<div class="control-group"  style="margin-top: 130px">
													<label class="control-label">原&nbsp;始&nbsp;密&nbsp;码:</label>
													<div class="controls">
														<input type="password"  value="${currentUser.password}" placeholder="" class="span8" disabled/>
														<span class="help-block">密码须已首字母开头并不少于6位</span>												
													</div>
												</div>																																																																																																																																															
												
												<div class="control-group">
													<label class="control-label">新&nbsp;的&nbsp;密&nbsp;码:</label>
													<div class="controls">
														<input type="password" name="password" placeholder=""  class="span8" />	
														<span class="help-block">密码须已首字母开头并不少于6位</span>												
													</div>
												</div>	
												
												<div class="control-group">
													<label class="control-label">重&nbsp;复&nbsp;密&nbsp;码:</label>
													<div class="controls">
														<input type="password"  placeholder=""  class="span8" />	
														<span class="help-block">密码须已首字母开头并不少于6位</span>												
													</div>
												</div>
												
													
																																																																											
																																																																																														
                                              <div class="row">
												<div class="span3"></div>
												  <div class="span9">
												  	&nbsp;&nbsp;&nbsp;<button  type="submit" class="btn blue"><i class="icon-ok"></i>提交</button>
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
		   TableEditable.init();
		   FormComponents.init();
		});
		jQuery(document).ready(function() {   
		   // initiate layout and plugins
		   App.init();
		});
		
		function selValue(obj,value){
			var length = eval(obj+".length");
			for(var i = 0;i < length;i++){
				if(eval(obj+".options["+i+"].value")==value){
					eval(obj+".options["+i+"]").selected=true;
				}
			}
		}
		function pageonload(){		
			selValue('document.all.managerName','${asset.managerName}');
			
		}
	</script>
	</script>

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>
<!-- END BODY -->

</html>