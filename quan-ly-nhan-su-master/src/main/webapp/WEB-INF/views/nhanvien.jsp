<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin cán bộ</title>
    <%@include file="fragment/importResources.jsp"%>

<link href="<c:url value='/resources/css/myDataTable.css' />" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
            margin-top: 50px;
        }
        .profile-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .profile-card img {
            width: 100px;
            border-radius: 50%;
        }
        .profile-card h4 {
            margin-top: 10px;
        }
        .profile-card p {
            margin-bottom: 5px;
        }
        .profile-info {
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .profile-info input {
            margin-bottom: 10px;
        }
        .form-control:disabled, .form-control[readonly] {
            background-color: #e9ecef;
            opacity: 1;
        }
    </style>
</head><%@include file="fragment/header.jsp"%>
<body>

    <div class="container">
        <div class="row">
            <!-- Profile Card -->
            <div class="col-md-4">
                <div class="profile-card text-center">
                    <img src="<c:url value='/resources/images/admin.jpg'/>" alt="">
                    <h4 id="userName">Admin Account</h4>
                   
                  
                    <a>Ngày sinh: <span id="ns"></span></a><br>
                    <a>Quê quán: <span id="qq"></span></a><br>
                    <a>Giới tính: <span id="gt"></span></a><br>
                </div>
            </div>
            <!-- Profile Info Form -->
            <div class="col-md-8">
                <div class="profile-info">
                    <h5>Thông tin <span id="cd"></span></h5>
                    <form>
                       <div class="row">
                       
							<div class="col-md-3">
								<div class="form-group">
									<label for="tenAdd" class="label-style">Chuyên Môn</label> 
									<spam class="form-control" id="luotTruyCap" type="text" ></span>
								</div>
							</div>
							<div class="col-md-3">
								<label for="tenGoiKhacAdd" class="label-style">Phòng Ban</label>
								<spam class="form-control" id="pb" type="text" ></span>
							</div>
						
								<div class="col-md-3">
								<div class="form-group">
									<label for="tenAdd" class="label-style">Bậc Lương</label> 
									<spam class="form-control" id="bl" type="text" ></span>
								</div>
							</div>	<div class="col-md-3">
								<div class="form-group">
									<label for="tenAdd" class="label-style">Hệ Số lương</label> 
									<spam class="form-control" id="hsl" type="text" ></span>
								</div>
							</div>
							<div class="col-md-3">
								<label for="tenGoiKhacAdd" class="label-style">Phụ Cấp Khác</label>
								<input class="form-control" id="pck" type="text">
							</div>
							<div class="col-md-3">
								<label for="ngaySinhAdd" class="label-style">Phụ Cấp Chức Vụ</label>
							<input class="form-control" id="pccv" type="text">
							</div>
							<div class="col-md-3">
								<label for="ngaySinhAdd" class="label-style">Ngày Nhận Lương</label>
							<input class="form-control" id="nnl" type="text">
							</div>
							<div class="col-md-3">
								<label for="ngaySinhAdd" class="label-style">Trình Độ Giáo Dục Phổ Thông</label>
							<input class="form-control" id="tdgdpt" type="text">
							</div>
						
							<div class="col-md-3">
								<label for="ngaySinhAdd" class="label-style">Nhóm Máu</label>
							<input class="form-control" id="nm" type="text">
							</div>
							<div class="col-md-3">
								<label for="ngaySinhAdd" class="label-style">Số Bảo Hiểm Xã Hội</label>
							<input class="form-control" id="sbhxh" type="text">
							</div>
							</div>
                        <div class="form-group">
                            <label for="quyenHan">Quyền hạn:</label><br>
                            <input type="radio" name="quyenHan" id="quanTriVien" checked> Quản trị viên
                            <input type="radio" name="quyenHan" id="nhanVien"> Nhân viên
                        </div>
                        <div class="form-group">
                            <label for="trangThai">Trạng thái:</label><br>
                            <input type="radio" name="trangThai" id="dangHoatDong" checked> Đang hoạt động
                            <input type="radio" name="trangThai" id="khongHoatDong"> Không hoạt động
                        </div>
                     
                    </form>
                </div>
            </div>
        </div>
    </div>

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

                    // Update Profile Card
                    $("#userName").text(canBoDTO.ten);
                    $("#luotTruyCap").text(canBoDTO.ngachCongChuc.tenNgach);
                    $("#pb").text(canBoDTO.donViChucNang.tenDonVi);
                    $("#ns").text(canBoDTO.ngaySinh);
                    $("#qq").text(canBoDTO.queQuan.tenQueQuan);
                    $("#hsl").text(canBoDTO.bacLuong.heSoLuong);
                    $("#bl").text(canBoDTO.bacLuong.maBacLuong);
                    $("#gt").text(canBoDTO.gioiTinh);
                    $("#cd").text(canBoDTO.chucDanh);
                    // Populate Form Fields
                    $("#pck").val(canBoDTO.phuCapKhac);
                    $("#pccv").val(canBoDTO.phuCapChucVu);
                    $("#tdgdpt").val(canBoDTO.trinhDoGiaoDucPt);
                    $("#soDienThoai").val(canBoDTO.soHieu);
                    $("#sbhxh").val(canBoDTO.soBaoHiemXh);
                    $("#nm").val(canBoDTO.nhomMau);
                    $("#cn").val(canBoDTO.canNang);
                    $("#cc").val(canBoDTO.chieuCao);
                    // Set quyền hạn
                    if (canBoDTO.chucDanh === "Giám Đốc") {
                        $("#quanTriVien").prop("checked", true);
                    } else {
                        $("#nhanVien").prop("checked", true);
                    }
                    // Set trạng thái
                    if (canBoDTO.trangThai === "Đang hoạt động") {
                        $("#khongHoatDong").prop("checked", true);
                    } else {
                        $("#dangHoatDong").prop("checked", true);
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
