<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản lý nhân sự</title>
<%@include file="fragment/importResources.jsp"%>
</head>
<body>
	<!-- banner -->
	<%@include file="fragment/header.jsp"%>
	<!-- /inner_content-->
	<div class="inner_content">
		<!-- /inner_content_w3_agile_info-->
		<div class="inner_content_w3_agile_info">
			<!-- /agile_top_w3_grids-->

			<!-- /w3ls_agile_circle_progress-->
			<div class="w3ls_agile_circle_progress agile_info_shadow">
				<div class="cir_agile_info "></div>
			</div>
			<!-- /w3ls_agile_circle_progress-->

		</div>
		<!-- //inner_content_w3_agile_info-->
	</div>
	<!-- //inner_content-->
	</div>
	<!--copy rights start here-->
	<%@include file="fragment/footer.jsp"%>
	<!--copy rights end here-->

</body>
</html>				<script>
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