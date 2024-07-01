<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quyết định kỷ luật</title>
<%@include file="fragment/importResources.jsp"%>
<%@include file="fragment/importDataTableResources.jsp"%>

<link href="<c:url value='/resources/css/myDataTable.css' />"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- header -->
	<%@include file="fragment/header.jsp"%>
	<!-- /inner_content-->
	<div class="inner_content">

		<!-- datatable start  -->
		<h1>DANH SÁCH QUYẾT ĐỊNH KỶ LUẬT</h1>
		<!-- 	<button id="button">btn</button> -->
		<table id="QuyetDinhKyLuatTable" class="display">

			<!-- Header Table -->
			<thead>
				<tr>
					<th>Họ và tên</th>
					<th>Số quyết định</th>
					<th>Tên quyết định kỷ luật</th>
					<th>Nội dung kỷ luật</th>
					<th>Ngày ký</th>
					<th>Người ký</th>
					<th>Chi tiết</th>
				
				</tr>
			</thead>
			<!-- Footer Table -->
			<tfoot>
				<tr>
					<th>Họ và tên</th>
					<th>Số quyết định</th>
					<th>Tên quyết định kỷ luật</th>
					<th>Nội dung kỷ luật</th>
					<th>Ngày ký</th>
					<th>Người ký</th>
					<th>Chi tiết</th>
			
				</tr>
			</tfoot>
		</table>
		<!-- datatable end -->
	</div>
	<%@include file="form/quyetDinhKyLuatForm.jsp"%>
</body>
</html><script >
$(document).ready(function() {
	var quyetDinhKyLuatService = "/quyetDinhKyLuatService";
	var quyetDinhKyLuatController = "/quyetDinhKyLuatController";
	 var a = "";
	    <c:forEach var="authority" items="${sessionScope.authorities}">
	        a += "${authority}";
	    </c:forEach>
	var table = $('#QuyetDinhKyLuatTable').DataTable({
		"sAjaxSource" : quyetDinhKyLuatService+"/findAllByCanBoPk/"+a,
		"sAjaxDataProp" : "",
		"order" : [ [ 0, "asc" ] ],
		"aoColumnDefs": [ 
		      {
			       "aTargets": [ 0 ],
			       "mData": "canBo.ten"
		      },
		      {
			       "aTargets": [ 1 ],
			       "mData": "soQuyetDinh"
		      },
		      {
			       "aTargets": [ 2 ],
			       "mData": "tenQuyetDinh"
		      },
		      {
			       "aTargets": [ 3 ],
			       "mData": "noiDungQuyetDinh"
		      },
		      {
			       "aTargets": [ 4 ],
			       "mData": "ngayKy"
		      },
		      {
			       "aTargets": [ 5 ],
			       "mData": "nguoiKy"
		      },
			
		      {
				   "targets": -1,
				   "data": null,
				   "defaultContent": "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' id='btnUpdate'>Chi Tiết</button>"
			  },
		],
		scrollY : "600px",
		scrollCollapse: true,
		dom: 'Blfrtip',
		buttons: [
		          {
	                 text: '',
	                 action: function ( e, dt, node, config ) {
	                	 var txtPk = $(pk);
	                	 var txtDonViChucNangQdkl_pk=$(donViChucNangQdkl_pk);
	                	 var txtCanBoQdkl_pk = $(canBoQdkl_pk);
	                	 var txtSoQuyetDinh = $(soQuyetDinh);
	                	 var txtTenQuyetDinh = $(tenQuyetDinh);
	                	 var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
	                	 var txtNgayKy = $(ngayKy);
	                	 var txtNguoiKy = $(nguoiKy);
	                	 var txtTuNgay = $(tuNgay);
	                	 var txtDenNgay = $(denNgay);
	                	 var txtFileKy = $(fileKy);
	                	 var txtVersion = $(version);

	                	 txtPk.val(-1);
	                	 txtDonViChucNangQdkl_pk.val("");
	                	 txtCanBoQdkl_pk.val("");
	                	 txtSoQuyetDinh.val("");
	                	 txtTenQuyetDinh.val("");
	                	 txtNoiDungQuyetDinh.val("");
	                	 txtNgayKy.val("");
	                	 txtNguoiKy.val("");
	                	 txtTuNgay.val("");
	                	 txtDenNgay.val("");
	                	 txtFileKy.val("");
	                	 txtVersion.val("");
	                     $('').modal('show');
	                 },
	              }
		          ],
	    colReorder: true,
	    select: true,
	    "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
        }
	});

	$('#QuyetDinhKyLuatTable tbody').on( 'click', 'button', function () {
		var id = $(this)[0].id;
		if("btnDel" == id){
        var data = table.row($(this).parents('tr')).data();
        check = confirm("Bạn có chắc chắn muốn xóa quyết định kỷ luật : " + data['soQuyetDinh'])
            var pK = data['pk'];
        	var version = data['version'];
            if(check==true){
            	$.ajax({  
                    url: quyetDinhKyLuatController+"/delete/"+pK+"?version="+version,  
                    type: 'DELETE',  
                    success: function (res) {
                    	alert("Xóa Thành Công");
                    	table.ajax.reload();	              
                    }  
                });
            }
                
		}
    });
	
	$('#QuyetDinhKyLuatTable tbody').on( 'click', 'button', function () {
		var id = $(this)[0].id;
		if("btnUpdate" == id){
				var data = table.row($(this).parents('tr')).data();
                var pK = data['pk'];
                var txtPk = $(pk);
                var txtDonViChucNangQdkl_pk=$(donViChucNangQdkl_pk);
               	var txtCanBoQdkl_pk = $(canBoQdkl_pk);
               	var txtSoQuyetDinh = $(soQuyetDinh);
               	var txtTenQuyetDinh = $(tenQuyetDinh);
               	var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
               	var txtNgayKy = $(ngayKy);
               	var txtNguoiKy = $(nguoiKy);
               	var txtTuNgay = $(tuNgay);
               	var txtDenNgay = $(denNgay);
               	var txtFileKy = $(fileKy);
               	var txtVersion = $(version);

            	$.ajax({  
                    url: quyetDinhKyLuatService+"/getById/"+pK,  
                    type: 'GET',  
                    success: function (res) {
                    	 txtPk.val(pK);
                    	 txtDonViChucNangQdkl_pk.val(res.donViChucNang.pk);
                    	 if(res.canBo!=null){
	                		 var toAppend = '';
	                         $.each(res.donViChucNang.canBo,function(i,o){
	                        	 if(o.pk==res.canBo.pk){
	                        		 toAppend += '<option value='+o.pk+' selected>'+o.ten+'</option>';
	                        	 } else {	                        		 
	                        		 toAppend += '<option value='+o.pk+'>'+o.ten+'</option>';
	                        	 }
	                        });
	                         txtCanBoQdkl_pk.empty();
	                         txtCanBoQdkl_pk.append(toAppend);
	                	 }
	                	 txtSoQuyetDinh.val(res.soQuyetDinh);
	                	 txtTenQuyetDinh.val(res.tenQuyetDinh);
	                	 txtNoiDungQuyetDinh.val(res.noiDungQuyetDinh);
	                	 txtNgayKy.val(res.ngayKy);
	                	 txtNguoiKy.val(res.nguoiKy);
	                	 txtTuNgay.val(res.tuNgay);
	                	 txtDenNgay.val(res.denNgay);
	                	 txtFileKy.val(res.fileKy);
	                	 txtVersion.val(res.version);
	                     $('#formQuyetDinhKyLuat').modal('show');
                    }
                });
		}	
    });
	
	//twitter bootstrap btnCapNhap
	$("button#btnDong").click(function(e) {
		 var txtDonViChucNangQdkl_pk=$(donViChucNangQdkl_pk);
      	 var txtCanBoQdkl_pk = $(canBoQdkl_pk);
      	 var txtSoQuyetDinh = $(soQuyetDinh);
      	 var txtTenQuyetDinh = $(tenQuyetDinh);
      	 var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
      	 var txtNgayKy = $(ngayKy);
      	 var txtNguoiKy = $(nguoiKy);
      	 var txtTuNgay = $(tuNgay);
      	 var txtDenNgay = $(denNgay);
      	 var txtFileKy = $(fileKy);
      	 txtDonViChucNangQdkl_pk.val("");
       	 txtCanBoQdkl_pk.val("");
       	 txtSoQuyetDinh.val("");
       	 txtTenQuyetDinh.val("");
       	 txtNoiDungQuyetDinh.val("");
       	 txtNgayKy.val("");
       	 txtNguoiKy.val("");
       	 txtTuNgay.val("");
       	 txtDenNgay.val("");
       	 txtFileKy.val("");
    }); 
	
	$("#formQuyetDinhKyLuat").on('hidden.bs.modal', function () {
        $("#formTest").find('.has-error').removeClass("has-error");
        $("#formTest").find('.has-feedback').removeClass("has-feedback");
    });
	
	changeDonViChucNang = function(){
		var donViChucNangPk = $(donViChucNangQdkl_pk).val();
		 $.ajax({  
             url: quyetDinhKyLuatService+"/getCanBoByDonViChucNang/"+donViChucNangPk,  
             type: 'GET',  
             success: function (res) {
            	 var toAppend = '';
                 $.each(res,function(i,o){
                	 toAppend += '<option value='+o.pk+'>'+o.ten+'</option>';
                });
               $('#canBoQdkl_pk').empty();
               $('#canBoQdkl_pk').append(toAppend);
             }
		 });
	}
	
} );
/*  datepicker*/
$.fn.datepicker.defaults.format = "yyyy-mm-dd";
$('.datepicker').datepicker({
	 	startDate: '-3d'
});

	 
	
	 
</script>