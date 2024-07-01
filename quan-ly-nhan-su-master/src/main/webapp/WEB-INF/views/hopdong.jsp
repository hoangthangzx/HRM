<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <title>DataTables Example</title>
    <%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    
</head>
<body>
	<%@include file="fragment/header.jsp"%><h1>Thông Tin</h1><br><h1>DANH SÁCH HỢP ĐỒNG CÁN BỘ</h1>
    <table id="HopDongCanBoTable" class="display">
        <thead>
            <tr>
                <th>Đơn Vị Chức Năng</th>
                <th>Cán Bộ</th>
                <th>Loại Hợp Đồng</th>
                <th>Ngày Ký</th>
                <th>Từ Ngày</th>
                <th>Đến Ngày</th>
                <th>Mã Hợp Đồng</th>
                <th>Tên Hợp Đồng</th>
                <th>Chức Vụ</th>
                <th>Trích Yếu Nội Dung</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
<%@include file="form/hopDongCanBoForm.jsp"%>
	<!-- //inner_content-->
	<!-- footer -->
	<%-- <%@include file="fragment/footer.jsp"%> --%>
    <script type="text/javascript">
    $(document).ready(function() {
        // Base URL and PK value handling
        var baseUrl = "http://localhost:8080/hopDongCanBoService/getAllByPk";
        var pk = "";
        <c:forEach var="authority" items="${sessionScope.authorities}">
            pk += "${authority}";
        </c:forEach>

        // Construct the AJAX URL
        var ajaxUrl = baseUrl + "/" + pk;

        // Initialize DataTable
        $('#HopDongCanBoTable').DataTable({
            "ajax": {
                "url": ajaxUrl, // Adjust URL to your endpoint
                "dataSrc": "",
                "error": function (xhr, error, thrown) {
                    $('#HopDongCanBoTable').html('<tr><td colspan="10">Không có dữ liệu.</td></tr>');
                }
            },
            "columns": [
                { "data": "donViChucNang.tenDonVi" },
                { "data": "canBo.ten" },
                { "data": "loaiHopDong.tenLoaiHopDong" },
                { "data": "ngayKy" },
                { "data": "tuNgay" },
                { "data": "denNgay" },
                { "data": "maHopDong" },
                { "data": "tenHopDong" },
                { "data": "chucVu" },
                { "data": "trichYeuNoiDung" }
            ]
        });
    });

    </script>
</body>
</html>
