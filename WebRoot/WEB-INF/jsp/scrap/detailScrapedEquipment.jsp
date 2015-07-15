<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>     
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder"%> 
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
	<title>报废登记</title>
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
	<script type="text/javascript" src="${pageScope.basePath }ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="${pageScope.basePath }ckfinder/ckfinder.js"></script>
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
							 仪器管理<small>&nbsp;报废仪器详情</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="#">仪器管理系统</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="">仪器报废管理</a>
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="">详情查看</a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<div class="portlet box blue ">
										<div class="portlet-title">
											<div class="caption"><i class="icon-reorder"></i>详情查看</div>
										</div>
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form action="<%=request.getContextPath() %>/scrap/addScrapedEquipment" name="Form1" method="post" class="form-horizontal form-bordered">
												
												
												
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 12px">设&nbsp;备&nbsp;名&nbsp;称&nbsp;:</label>
													<div class="controls">											
														<input type="text"  value="${detailscrapedEquipment.equipment.name}"  placeholder="" class="span12" disabled="disabled"/>														
													</div>
												</div>
												
												<div class="control-group ">
													<label class="control-label" style="margin-top: 12px">登记人</label>
													<div class="controls">											
														<input type="text" name="admin_id"  value="${detailscrapedEquipment.admin.name}" class="span12" disabled="disabled"/>														
													</div>
												</div>
																		
												
											
												
												<div class="control-group">
													<label class="control-label" style="margin-top: 25px">检&nbsp;修&nbsp;日&nbsp;期&nbsp;:</label>
													<div class="controls" style="margin-top: 15px">
														<div class="input-append date date-picker"  data-date-format="yyyy-mm-dd" data-date-viewmode="years">
															<input readonly="readonly" value="${detailscrapedEquipment.checked_date}" class="m-wrap m-ctrl-medium date-picker" name="checked_date" size="16" type="text"  >
															<span class="add-on"><i class="icon-calendar"></i></span>
														</div>
													</div>
												</div>
												
												<div class="control-group" >
													<label class="control-label" style="margin-top: 12px">报&nbsp;费&nbsp;原&nbsp;因&nbsp;:</label>
													<div class="controls" disabled="disabled" >
													<!-- <input name="scrap_describe"  class="span12"  type="text"  > -->
													<ckfinder:setupCKEditor editor="scrap_describe" basePath="ckfinder/" />     
                                                    <ckeditor:editor basePath="ckeditor/"  editor="scrap_describe" value="${detailscrapedEquipment.scrap_describe }" />     
            
														
													</div>
												</div>
												<div class="form-actions">
													<a class="btn blue" data-toggle="modal" href="${pageScope.basePath }scrap/getAllScrapedEquipment"><i class="icon-ok"></i> 返回</a>
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
			selValue('document.all.type','${fequipment.type}' );		
		}
	</script>
<!-- END BODY -->
</html>
