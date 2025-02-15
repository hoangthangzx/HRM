<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quyết định khen thưởng</title>
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
		<h1>DANH SÁCH QUYẾT ĐỊNH KHEN THƯỞNG</h1>
		<!-- 	<button id="button">btn</button> -->
		<table id="QuyetDinhKhenThuongTable" class="display">

			<!-- Header Table -->
			<thead>
				<tr>
					<th>Họ và tên</th>
					<th>Số quyết định</th>
					<th>Tên quyết định khen thưởng</th>
					<th>Nội dung khen thưởng</th>
					<th>Ngày ký</th>
					<th>Người ký</th>
				
				</tr>
			</thead>
			<!-- Footer Table -->
			<tfoot>
				<tr>
					<th>Họ và tên</th>
					<th>Số quyết định</th>
					<th>Tên quyết định khen thưởng</th>
					<th>Nội dung khen thưởng</th>
					<th>Ngày ký</th>
					<th>Người ký</th>
					
				</tr>
			</tfoot>
		</table>
		<!-- datatable end -->
	</div>
	<%@include file="form/quyetDinhKhenThuongForm.jsp"%>
</body>
</html><script>
$(document).ready(function() {
	var quyetDinhKhenThuongService = "/quyetDinhKhenThuongService";
	var quyetDinhKhenThuongController = "/quyetDinhKhenThuongController";
	  // Construct pk from sessionScope.authorities
    var a = "";
    <c:forEach var="authority" items="${sessionScope.authorities}">
        a += "${authority}";
    </c:forEach>

	var table = $('#QuyetDinhKhenThuongTable').DataTable({
		"sAjaxSource" : quyetDinhKhenThuongService+"/getAllByCanBoPk/"+a,
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
			       "defaultContent": ""
		      },
		      {
				   "targets": -2,
				   "data": null,
				   "defaultContent": ""
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
	                	 var txtDonViChucNangQdkt_pk=$(donViChucNangQdkt_pk);
	                	 var txtCanBoQdkt_pk = $(canBoQdkt_pk);
	                	 var txtSoQuyetDinh = $(soQuyetDinh);
	                	 var txtTenQuyetDinh = $(tenQuyetDinh);
	                	 var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
	                	 var txtNgayKy = $(ngayKy);
	                	 var txtNguoiKy = $(nguoiKy);
	                	 var txtFileKy = $(fileKy);
	                	 var txtVersion = $(version);

	                	 txtPk.val(-1);
	                	 txtDonViChucNangQdkt_pk.val("");
	                	 txtCanBoQdkt_pk.val("");
	                	 txtSoQuyetDinh.val("");
	                	 txtTenQuyetDinh.val("");
	                	 txtNoiDungQuyetDinh.val("");
	                	 txtNgayKy.val("");
	                	 txtNguoiKy.val("");
	                	 txtFileKy.val("");
	                	 txtVersion.val("");
	                     $('#formQuyetDinhKhenThuong').modal('show');
	                 },
	              }
		          ],
	    colReorder: true,
	    select: true,
	    "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
        }
	});

	$('#QuyetDinhKhenThuongTable tbody').on( 'click', 'button', function () {
		var id = $(this)[0].id;
		if("btnDel" == id){
        var data = table.row($(this).parents('tr')).data();
        check = confirm("Bạn có chắc chắn muốn xóa quyết định khen thưởng : "+ data['soQuyetDinh'])
            var pK = data['pk'];
        	var version = data['version'];
            if(check==true){
            	$.ajax({  
                    url: quyetDinhKhenThuongController+"/delete/"+pK+"?version="+version,  
                    type: 'DELETE',  
                    success: function (res) {
                    	alert("Xóa Thành Công");
                    	table.ajax.reload();	                    
                    }  
                });
            }
                
		}
    });
	
	$('#QuyetDinhKhenThuongTable tbody').on( 'click', 'button', function () {
		var id = $(this)[0].id;
		if("btnUpdate" == id){
				var data = table.row($(this).parents('tr')).data();
                var pK = data['pk'];
                var txtPk = $(pk);
                var txtDonViChucNangQdkt_pk=$(donViChucNangQdkt_pk);
               	var txtCanBoQdkt_pk = $(canBoQdkt_pk);
               	var txtSoQuyetDinh = $(soQuyetDinh);
               	var txtTenQuyetDinh = $(tenQuyetDinh);
               	var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
               	var txtNgayKy = $(ngayKy);
               	var txtNguoiKy = $(nguoiKy);
               	var txtFileKy = $(fileKy);
               	var txtVersion = $(version);

            	$.ajax({  
                    url: quyetDinhKhenThuongService+"/getById/"+pK,  
                    type: 'GET',  
                    success: function (res) {
                    	 txtPk.val(pK);
                    	 txtDonViChucNangQdkt_pk.val(res.donViChucNang.pk);
                    	 if(res.canBo!=null){
	                		 var toAppend = '';
	                         $.each(res.donViChucNang.canBo,function(i,o){
	                        	 if(o.pk==res.canBo.pk){
	                        		 toAppend += '<option value='+o.pk+' selected>'+o.ten+'</option>';
	                        	 } else {	                        		 
	                        		 toAppend += '<option value='+o.pk+'>'+o.ten+'</option>';
	                        	 }
	                        });
	                         txtCanBoQdkt_pk.empty();
	                         txtCanBoQdkt_pk.append(toAppend);
	                	 }
	                	 txtSoQuyetDinh.val(res.soQuyetDinh);
	                	 txtTenQuyetDinh.val(res.tenQuyetDinh);
	                	 txtNoiDungQuyetDinh.val(res.noiDungQuyetDinh);
	                	 txtNgayKy.val(res.ngayKy);
	                	 txtNguoiKy.val(res.nguoiKy);
	                	 txtFileKy.val(res.fileKy);
	                	 txtVersion.val(res.version);
	                     $('#formQuyetDinhKhenThuong').modal('show');
                    }
                });
		}	
    });
	
	//twitter bootstrap btnCapNhap
	$("button#btnCapNhap").click(function(e) {

	 var endpointUrl = '/quyetDinhKhenThuongController/add';
	 var txtPk = $(pk);
   	 var txtDonViChucNangQdkt_pk=$(donViChucNangQdkt_pk);
   	 var txtCanBoQdkt_pk = $(canBoQdkt_pk);
   	 var txtSoQuyetDinh = $(soQuyetDinh);
   	 var txtTenQuyetDinh = $(tenQuyetDinh);
   	 var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
   	 var txtNgayKy = $(ngayKy);
   	 var txtNguoiKy = $(nguoiKy);
   	 var txtFileKy = $(fileKy);
   	 var txtVersion = $(version);
   	 	
   	 var json = new Object();
     json.pk = txtPk.val();
     json.donViChucNang = new Object();
     json.donViChucNang.pk = txtDonViChucNangQdkt_pk.val();
     json.canBo = new Object();
     json.canBo.pk = txtCanBoQdkt_pk.val();
     json.soQuyetDinh = txtSoQuyetDinh.val();
     json.tenQuyetDinh = txtTenQuyetDinh.val();
     json.noiDungQuyetDinh = txtNoiDungQuyetDinh.val();
     json.ngayKy = txtNgayKy.val();
     json.nguoiKy = txtNguoiKy.val();
     json.fileKy = txtFileKy.val();
     json.version = txtVersion.val();

    	if(txtPk.val()!= -1){
         	var endpointUrl = '/quyetDinhKhenThuongController/update';
        }
    	var invalidFields = $("#formTest").find(":invalid");
        if(invalidFields.length == 0){
            $.ajax({
                type : "POST",
                contentType: "application/json; charset=utf-8",
                data : JSON.stringify(json),
                url : endpointUrl,
                success : function(msg) {
                	alert("Thành Công");
        			$('#formQuyetDinhKhenThuong').modal('toggle');
                    table.ajax.reload();
                },
                error: function (data, textStatus, xhr) {
        			alert(data.responseText);
        		}
            });
        }else {
         	$("#formTest").submit();
        }   
    });
	
	$("button#btnDong").click(function(e) {
		 var txtDonViChucNangQdkt_pk=$(donViChucNangQdkt_pk);
      	 var txtCanBoQdkt_pk = $(canBoQdkt_pk);
      	 var txtSoQuyetDinh = $(soQuyetDinh);
      	 var txtTenQuyetDinh = $(tenQuyetDinh);
      	 var txtNoiDungQuyetDinh = $(noiDungQuyetDinh);
      	 var txtNgayKy = $(ngayKy);
      	 var txtNguoiKy = $(nguoiKy);
      	 var txtFileKy = $(fileKy);
      	 txtDonViChucNangQdkt_pk.val("");
       	 txtCanBoQdkt_pk.val("");
       	 txtSoQuyetDinh.val("");
       	 txtTenQuyetDinh.val("");
       	 txtNoiDungQuyetDinh.val("");
       	 txtNgayKy.val("");
       	 txtNguoiKy.val("");
       	 txtFileKy.val("");
    }); 
	
	$("#formQuyetDinhKhenThuong").on('hidden.bs.modal', function () {
        $("#formTest").find('.has-error').removeClass("has-error");
        $("#formTest").find('.has-feedback').removeClass("has-feedback");
    });
	
	changeDonViChucNang = function(){
		var donViChucNangPk = $(donViChucNangQdkt_pk).val();
		 $.ajax({  
             url: quyetDinhKhenThuongService+"/getCanBoByDonViChucNang/"+donViChucNangPk,  
             type: 'GET',  
             success: function (res) {
            	 var toAppend = '';
                 $.each(res,function(i,o){
                	 toAppend += '<option value='+o.pk+'>'+o.ten+'</option>';
                });
               $('#canBoQdkt_pk').empty();
               $('#canBoQdkt_pk').append(toAppend);
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