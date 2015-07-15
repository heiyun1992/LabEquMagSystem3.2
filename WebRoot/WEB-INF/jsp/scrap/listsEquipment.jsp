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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>仪器列表</title>
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
<body class="page-header-fixed">
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
							 仪器管理<small>&nbsp;站内仪器列表</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">仪器系统</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="">仪器报废管理</a>
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">仪器列表</a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>仪器列表</div>
								
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											
											<th>设备名称</th>
											<th>设备编号</th>
											<th>设备型号</th>
											<th>设备价格</th>
											<th>制造厂家</th>
											<th>购买日期</th>																													
											<th>操         作</th>
										</tr>
									</thead>
									<tbody id="newbody">
									<c:forEach var="list" items="${equipmentListsss}">
										<tr class="">									
											<td><a class="btn mini" href="">${list.name}</a></td>
											<td>${list.type}</td>
											<td class="center">${list.models}</td>
											<td>${list.price}</td>
											<td>${list.vender}</td>											
											<td>${list.purchase_date}</td>											
											<td><a class="btn mini red" href="${pageScope.basePath }scrap/addScrapedEquipment1?addId=${list.id}" >报废登记</a></td>
										</tr>	
										</c:forEach>				
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
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
		function removeRow(){
			/* var row=document.getElementById("2"); 
			　var index=row.rowIndex;
			alert(index);*/
			document.getElementById("newbody").deleteRow(document.getElementById(document.getElementById("table").rows.length).rowIndex);
			};
	</script>
	<script>
    $(function () {
        //查找id=tab的表格，下面所有的tr，下面的所有td，第一个td下面复习框的点击事件。
        $("#sample_editable_1 tr>td:nth-child(1)").find("input[type='checkbox']").bind("click", function () {
            if ($(this).attr("checked") == true) {
                $(this).parent().nextAll().find("input[type='checkbox']").attr("checked", true);
            }
            else {
                $(this).parent().nextAll().find("input[type='checkbox']").attr("checked", false);
            }
        })
    })
</script> 
<!-- END BODY -->
</html>
