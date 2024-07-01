<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sự Kiện</title>
<%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>
<script src="<c:url value='/resources/js/sukienNV.js' />"></script>
<link href="<c:url value='/resources/css/myDataTable.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- header -->
	<%@include file="fragment/header.jsp"%>
	<!-- /inner_content-->
	<div class="inner_content">
		<!-- datatable start  -->
		<h1>DANH SÁCH SỰ KIỆN</h1>
	
		<table id="sukienTable" class="display">
			<!-- Header Table -->
			<thead>
				<tr>
					<th>Tên Sự Kiện</th>
					<th>Nội Dung</th>
					<th>Ngày Bắt ĐầU</th>
					<th>Ngày Kết Thúc</th>
					<th>Địa Điểm</th>
				
				</tr>
			</thead>
			<!-- Footer Table -->
			<tfoot>
				<tr>
				<th>Tên Sự Kiện</th>
					<th>Nội Dung</th>
					<th>Ngày Bắt ĐầU</th>
					<th>Ngày Kết Thúc</th>
					<th>Địa Điểm</th>
					
				</tr>
			</tfoot>
		</table>
		<!-- datatable end -->
	</div>
	<%@include file="form/sukienForm.jsp"%>
	<!-- //inner_content-->
	<!-- footer -->
	<%-- <%@include file="fragment/footer.jsp"%> --%>
</body>
</html>
				<script>
$(document).ready(function() {
    // Construct pk from sessionScope.authorities
    var pk = "";
    <c:forEach var="authority" items="${sessionScope.authorities}">
        pk += "${authority}";
    </c:forEach>

    // Call endpoint getById with constructed pk
    $.ajax({
        url: "/canBoService/getById/" + pk,
        type: "GET",
        success: function(data) {
            // Handle the result into CanBoDTO
            var canBoDTO = data;

            // Display information on the HTML page
            $("#result").html(
                "<p>Thông tin cán bộ:</p>" +
                "<p>Họ và tên: " + canBoDTO.ten + "</p>" +
                "<p>Chức danh: " + canBoDTO.chucDanh + "</p>"
                // Add other fields as per the structure of CanBoDTO
            );
        },
        error: function(xhr, status, error) {
            // Handle error if any
            console.error("Error:", error);
        }
    });
    
});
$(document).ready(function() {
    // Construct pk from sessionScope.authorities
    var pk = "";
    <c:forEach var="authority" items="${sessionScope.authorities}">
        pk += "${authority}";
    </c:forEach>

    // Call endpoint getById with constructed pk
    $.ajax({
        url: "/canBoService/getById/" + pk,
        type: "GET",
        success: function(data) {
            // Handle the result into CanBoDTO
            var canBoDTO = data;

            // Display information on the HTML page
            $("#result").html(
                "<p>Thông tin cán bộ:</p>" +
                "<p>Họ và tên: " + canBoDTO.ten + "</p>" +
                "<p>Chức danh: " + canBoDTO.chucDanh + "</p>"
                // Add other fields as per the structure of CanBoDTO
            );

            // Hide menu items based on the role
            if (canBoDTO.chucDanh !== "Giám Đốc") {
            	 
            	  $("#btnUpdate").hide();
            	  $("#btnDel").hide();
            	  $("#tao").hide();
            	  
            }
        },
        error: function(xhr, status, error) {
            // Handle error if any
            console.error("Error:", error);
        }
    });
    
});

</script>