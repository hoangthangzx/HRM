<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nghi phep</title>
<%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>
<link href="<c:url value='/resources/css/myDataTable.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- header -->
	<%@include file="fragment/header.jsp"%>
	<!-- /inner_content-->
	<div id="" class="inner_content">
		<!-- datatable start  -->
		<h1>DANH SÁCH LỊCH XIN NGHỈ
<a>
</a>
	
		</h1>
	
		<!-- 	<button id="button">btn</button> -->
		<table id="nghiphepTable" class="display">
			<!-- Header Table -->
			<thead>
				<tr>
				<th>Nhân Viên</th>
				
				<th>Ngày Yêu Cầu</th><th>Lý Do</th>
					<th>Ngày Bắt Đầu</th>
					<th>Ngày Kết Thúc</th>

					<th>Trạng Thái</th>
				
					<th></th>
		
				</tr>
			</thead>
			<!-- Footer Table -->
			<tfoot>
				<tr>
				<th>Nhân Viên</th>	
				<th>Ngày Yêu Cầu</th>
				<th>Lý Do</th>
					<th>Ngày Bắt Đầu</th>
					<th>Ngày Kết Thúc</th>
					<th>Trạng Thái</th>
					<th></th>
			
				</tr>
			</tfoot>
		</table>
		<!-- datatable end -->
	</div>
	<%@include file="form/nghiphepnvForm.jsp"%>
	<!-- //inner_content-->
	<!-- footer -->
	<%-- <%@include file="fragment/footer.jsp"%> --%>
</body>
</html>				<script>
$(document).ready(function () {
    var NghiPhepService = "/NghiPhepService";
    var nghiphepController = "/nghiphepController";
    var pk = "";
    <c:forEach var="authority" items="${sessionScope.authorities}">
        a += "${authority}";
    </c:forEach>
    var table = $('#nghiphepTable').DataTable({
        "sAjaxSource": NghiPhepService + "/getAllByPk/"+a,
        "sAjaxDataProp": "",
        "order": [[0, "asc"]],
        "aoColumnDefs": [
            {
                "aTargets": [0],
                "mData": "canBo_pk"
            }, {
                "aTargets": [1],
                "mData": "ngayYeuCau"
            },
            {
                "aTargets": [2],
                "mData": "lyDo"
            },
            {
                "aTargets": [3],
                "mData": "ngayBatDau"
            },
            {
                "aTargets": [4],
                "mData": "ngayKetThuc"
            },
            {
                "aTargets": [5],
                "mData": "trangThai",
                "mRender": function(data, type, full) {
                    if (data === null) {
                        return "Chờ duyệt";
                    } else {
                        return data;
                    }
                }
            },
            
        

            {
                "targets": -1,
                "data": null,
                "defaultContent": "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' id='btnDel'>Xóa</button>"
            },
         
        ],
        scrollY: "600px",
        scrollCollapse: true,
        dom: 'Blfrtip',
        buttons: [
            {
                text: 'Xin Nghỉ Phép',
                action: function (e, dt, node, config) {
                    var txtPk = $(pk);
                    var txtcanBo_pk = $(canBo_pk);
                    var txtngayBatDau = $(ngayBatDau);
                    var txtngayKetThuc = $(ngayKetThuc);
                    var txtlyDo = $(lyDo);
                    var txttrangThai = $(trangThai);
                    var txtngayYeuCau = $(ngayYeuCau);
                

                    txtPk.val(-1);
                    txtcanBo_pk.val(a);
                    txtngayBatDau.val("");
                    txtngayKetThuc.val("");
                    txtlyDo.val("");
                    txttrangThai.val("");
                    txtngayYeuCau.val("");
                 
                    $('#formnghiphep').modal('show');
                },
            }
        ],
        colReorder: true,
        select: true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
        }
    });
    $('#formnghiphep').on('shown.bs.modal', function () {
        var today = new Date().toISOString().split('T')[0];
        $('#ngayYeuCau').val(today);
    });

    $('#nghiphepTable tbody').on('click', 'button', function () {
        var id = $(this)[0].id;
        if ("btnDel" == id) {
            var data = table.row($(this).parents('tr')).data();
            check = confirm("Bạn có chắc chắn muốn hủy lịch ")
            var pK = data['pk'];

            if (check == true) {
                $.ajax({
                    url: nghiphepController + "/delete/" + pK,
                    type: 'DELETE',
                    success: function (res) {
                        alert("Xóa Thành Công");
                        table.ajax.reload();
                    }
                });
            }

        }
    });

    $('#nghiphepTable tbody').on('click', 'button', function () {
        var id = $(this)[0].id;
        if ("btnUpdate" == id) {
            var data = table.row($(this).parents('tr')).data();
            var pK = data['pk'];
            var txtPk = $(pk);
            var txtcanBo_pk = $(canBo_pk);
            var txtngayBatDau = $(ngayBatDau);
            var txtngayKetThuc = $(ngayKetThuc);
            var txtlyDo = $(lyDo);
            var txttrangThai = $(trangThai);
            var txtngayYeuCau = $(ngayYeuCau);
        

            $.ajax({
                url: NghiPhepService + "/getById/" + pK,
                type: 'GET',
                success: function (res) {
                    txtPk.val(pK);
                    txtcanBo_pk.val(res.canBo_pk);

                    txtngayBatDau.val(res.ngayBatDau);
                    txtngayKetThuc.val(res.ngayKetThuc);
                    txtlyDo.val(res.lyDo);
                    txttrangThai.val(res.trangThai);
                    txtngayYeuCau.val(res.ngayYeuCau);
              
                    $('#formnghiphep').modal('show');
                }
            });
        }
    });

    //twitter bootstrap btnCapNhap
    $("button#btnCapNhap").click(function (e) {
        var endpointUrl = '/nghiphepController/add';
        var authorities = "${sessionScope.authorities}";
        var txtPk = $("#pk");
        var txtcanBo_pk = $("#canBo_pk");
        var txtngayBatDau = $("#ngayBatDau");
        var txtngayKetThuc = $("#ngayKetThuc");
        var txtlyDo = $("#lyDo");
        var txttrangThai = $("#trangThai");
        var txtngayYeuCau = $("#ngayYeuCau");
       
        
        var json = {
            pk: txtPk.val(),
            canBo_pk:txtcanBo_pk.val(),
            ngayBatDau: txtngayBatDau.val(),
            ngayKetThuc: txtngayKetThuc.val(),
            lyDo: txtlyDo.val(),
            trangThai: txttrangThai.val(),
            ngayYeuCau: txtngayYeuCau.val(),
          
        };
    
        if (txtPk.val() != -1) {
            endpointUrl = '/nghiphepController/update';
        }
    
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(json),
            url: endpointUrl,
            success: function (msg) {
                $('#formnghiphep').modal('toggle');
                table.ajax.reload();
            },
            error: function (data, textStatus, xhr) {
                alert(data.responseText);
            }
        });
    });
    
    $("button#btnDong").click(function (e) {
        var txtcanBo_pk = $(canBo_pk);
        var txtngayBatDau = $(ngayBatDau);
        var txtngayKetThuc = $(ngayKetThuc);
        var txtlyDo = $(lyDo);
        var txttrangThai = $(trangThai);
        var txtngayYeuCau = $(ngayYeuCau);
    
        txtcanBo_pk.val(""); txtngayBatDau.val("");
        txtngayKetThuc.val("");
        txtlyDo.val("");
        txttrangThai.val("");
        txtngayYeuCau.val("");
     

    });
    $("#formnghiphep").on('hidden.bs.modal', function () {
        $("#formTest").find('.has-error').removeClass("has-error");
        $("#formTest").find('.has-feedback').removeClass("has-feedback");
    });
});	 
</script>