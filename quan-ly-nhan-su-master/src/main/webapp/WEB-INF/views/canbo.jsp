<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách NHÂN VIÊN</title>
<%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>
<script src="<c:url value='/resources/js/canbo.js' />"></script>
<script src="<c:url value='/resources/js/keKhaiTaiSan.js' />"></script>
<link href="<c:url value='/resources/css/myDataTable.css' />" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/resources/css/quanlynhansu.css' />" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- header -->
<%@include file="fragment/header.jsp"%>
<!-- /inner_content-->
<div class="inner_content">
    <!-- datatable start  -->

    <div>
        <h2>Authorities:</h2>
        <ul>
            <c:forEach var="authority" items="${sessionScope.authorities}">
            <li><c:out value="${authority}" /></li>
            </c:forEach>    
        </ul>
        <div id="result"></div>
        
    </div>
    <table id="canBoTable" class="display">
        <!-- Header Table -->
        <thead>
            <tr>
                <th>Số Hiệu Nhân viên</th>
                <th>Tên Nhân viên</th>
                <th>Đơn Vị Công Tác</th>
                <th>Chức Vụ Hiện Tại</th>
                <th>Chi Tiết CB</th>
                <th id="1">Xóa CB</th>
            </tr>
        </thead>
        <!-- Footer Table -->
        <tfoot>
            <tr>
                <th>Số Hiệu Nhân viên</th>
                <th>Tên Nhân viên</th>
                <th>Đơn Vị Công Tác</th>
                <th>Chức Vụ Hiện Tại</th>
                <th>Chi Tiết</th>
                <th>Xóa CB</th>
            </tr>
        </tfoot>
    </table>
    <!-- datatable end -->
</div>
<%@include file="form/donViForm.jsp"%>
<%@include file="form/themCanBoForm.jsp"%>
<%@include file="form/chiTietCanBoForm.jsp"%>
<%@include file="form/thongKeForm.jsp"%>
<!-- footer -->
<%-- <%@include file="fragment/footer.jsp"%> --%>
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
            	  $("#btnDel").hide();
            	 
            	  
            }
        },
        error: function(xhr, status, error) {
            // Handle error if any
            console.error("Error:", error);
        }
    });
    
});

</script>
</body>
</html>
