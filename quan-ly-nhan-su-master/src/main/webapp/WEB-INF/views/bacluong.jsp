<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bậc Lương</title>
<%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>
<script src="<c:url value='/resources/js/bacluong.js' />"></script>
<link href="<c:url value='/resources/css/myDataTable.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- header -->
	<%@include file="fragment/header.jsp"%>
	<!-- /inner_content-->
	<div class="inner_content">
		<!-- datatable start  -->
		<h1>Bậc Lương Nhân Viên</h1>
		<!-- 	<button id="button">btn</button> -->
		<table id="BacLuongTable" class="display">
			<!-- Header Table -->
			<thead>
				<tr>
					<th>Bậc Lương</th>
					<th>Lương</th>
					<th>Sửa Lương</th>
					<th>Xóa Lương</th>
				</tr>
			</thead>
			<!-- Footer Table -->
			<tfoot>
				<tr>
						<th>Bậc Lương</th>
					<th>Lương</th>
					<th>Sửa Lương</th>
					<th>Xóa Lương</th>
				</tr>
			</tfoot>
		</table>
		<!-- datatable end -->
	</div>
	<%@include file="form/bacluongForm.jsp"%>
	<!-- //inner_content-->
	<!-- footer -->
	<%-- <%@include file="fragment/footer.jsp"%> --%>
</body>
</html>