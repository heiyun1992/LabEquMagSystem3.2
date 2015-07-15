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
	<title>修改仪器</title>
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
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="${pageScope.basePath }media/css/select2_metro.css" />
	<link rel="stylesheet" href="${pageScope.basePath }media/css/DT_bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageScope.basePath }media/css/datepicker.css" />
    <link href="${pageScope.basePath }media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="${pageScope.basePath }media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="${pageScope.basePath }media/image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed" onload="pageOnLoad()">
	<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <%@include file="../common/headernavbar.jsp"%> 
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<%@include file="../common/sidebarmenu.jsp"%> 
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<h3 class="page-title">
							 仪器管理<small>&nbsp;修改仪器</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="#">仪器管理系统</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="">仪器信息管理</a>
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="">修改仪器</a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<div class="portlet box blue ">
										<div class="portlet-title">
											<div class="caption"><i class="icon-reorder"></i>请输入仪器设备的基本信息</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form action="<%=request.getContextPath() %>/equipment/updEquipment" name="Form1" method="post" class="form-horizontal form-bordered">
												<div class="control-group hidden">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;Id&nbsp;:</label>
													<div class="controls">											
														<input type="text" name="id"  value="${fequipment.id}" class="span8" />														
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;名&nbsp;称&nbsp;:</label>
													<div class="controls">											
														<input type="text" name="name" value="${fequipment.name}"  placeholder="" class="span8" />														
													</div>
												</div>
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;编&nbsp;号&nbsp;:</label>
													<div class="controls">
														<!-- <select  name="type" class="m-wrap span8">
														    <option value=""></option>
															<option value="生物">生物</option>
        													<option value="物理">物理</option>
        													<option value="化学">化学</option> 
        													<option value="体育">体育</option> 
														</select> -->
														<input type="text" name="type" value="${fequipment.type}"  placeholder="" class="span8" />
														<!-- <span class="help-block">请选择您对工作区域的要求</span> -->
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">实&nbsp;验&nbsp;室&nbsp;名:</label>
													<div class="controls">								
														<select name="laboratoryId" id="laboratoryId" class="span8" tabindex="1">
															<option value=" "></option>
        													<c:forEach var="laboratory" items="${laboratoryNameList}">
        														<option value="${laboratory.name}">${laboratory.name}</option>														
															</c:forEach>  	
       	    											</select>   
														
													</div>
												</div>	
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;型&nbsp;号&nbsp;:</label>
													<div class="controls">
														<input type="text" name="models" value="${fequipment.models}" class="span8" />														
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;价&nbsp;格&nbsp;:</label>
													<div class="controls">
														<input type="text" name="price" value="${fequipment.price}" class="span8" />
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">制&nbsp;造&nbsp;厂&nbsp;家&nbsp;:</label>
													<div class="controls">
														<input type="text" name="vender" value="${fequipment.vender}" class="span8" />
													</div>
												</div>
												
												<div class="control-group hidden">
													<label class="control-label" style="margin-top: 12px">当&nbsp;前&nbsp;状&nbsp;态&nbsp;:</label>
													<div class="controls">
														<input type="text" name="state" value="${fequipment.state}" class="span8" readonly="readonly" />
													</div>
												</div>
												
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 25px">购&nbsp;买&nbsp;日&nbsp;期&nbsp;:</label>
													<div class="controls" style="margin-top: 15px">
														<div class="input-append date date-picker" data-date="2015-03-12" data-date-format="yyyy-mm-dd" data-date-viewmode="years">

															<input name="purchase_date" value="${fequipment.purchase_date}" class="m-wrap m-ctrl-medium date-picker" size="16" type="text"  readonly="readonly">
															<span class="add-on"><i class="icon-calendar"></i></span>

														</div>
													</div>
												</div>
												<div class="form-actions">
													<!-- <a class="btn blue" data-toggle="modal" href=""><i class="icon-ok"></i> 提交需求</a> -->
													<button  type="submit" class="btn blue"><i class="icon-ok"></i> 提交&nbsp;&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<button type="reset" class="btn blue"><i class="icon-remove"></i>&nbsp;&nbsp;重置</button>
													<!-- <a class="btn blue" data-toggle="modal" href="#responsive"> 自定义需求&nbsp;&nbsp;<li class="m-icon-swapright m-icon-white"></li></a> -->
												</div>
														<!-- <div id="responsive" class="modal hide fade" tabindex="-1" data-width="760">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
																<h3>自定义需求</h3>
															</div>
															<div class="modal-body">
																<div class="row-fluid">
																	<div class="span12">
																		<h4>请输入您的需求</h4>
																		<p><input type="text" class="span12 m-wrap"></p>
																	</div>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" data-dismiss="modal" class="btn">关闭</button>
																<a class="btn blue" data-toggle="modal" href=""><i class="icon-ok"></i> 提交到站内搜索</a>
															</div>
														</div> -->
											</form>
											<!-- END FORM-->  
										</div>
									</div>																																																			
				
				<!-- END PAGE CONTENT -->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<%@include file="../common/footer.jsp"%> 
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="${pageScope.basePath }media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${pageScope.basePath }media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${pageScope.basePath }media/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="media/js/excanvas.min.js"></script>
	<script src="media/js/respond.min.js"></script>  
	<![endif]-->   
	<script src="${pageScope.basePath }media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${pageScope.basePath }media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="${pageScope.basePath }media/js/select2.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/DT_bootstrap.js"></script>
    <script type="text/javascript" src="${pageScope.basePath }media/js/bootstrap-datepicker.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageScope.basePath }media/js/app.js"></script>
	<script src="${pageScope.basePath }media/js/table-editable.js"></script> 
    <script src="${pageScope.basePath }media/js/ui-modals.js"></script> 
    <script src="${pageScope.basePath }media/js/form-components.js"></script>    
	<script>
		jQuery(document).ready(function() {       
		   App.init();
		   TableEditable.init();
		   FormComponents.init();
		});
		
		function selValue(obj,value){
			var length = eval(obj+".length");
			for(var i = 0;i < length;i++){
				if(eval(obj+".options["+i+"].value")==value){
					eval(obj+".options["+i+"]").selected=true;
				}
			}
		}
		function pageOnLoad(){					
			/* selValue('document.all.type','${fequipment.type}' ); */
			selValue('document.all.laboratoryId','${fequipment.laboratoryId}' );		
		}
	</script>
<!-- END BODY -->
</html>
