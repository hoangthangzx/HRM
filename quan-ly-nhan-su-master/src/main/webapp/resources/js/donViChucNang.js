$(document).ready(function() {
		var donViChucNangService = "/donViChucNangService";
		var donViChucNangController = "/donViChucNangController";
		var table = $('#DonViChucNangTable').DataTable({
			"sAjaxSource" : donViChucNangService+"/getAll",
			"sAjaxDataProp" : "",
			"order" : [ [ 0, "asc" ] ],
			"aoColumnDefs": [ 
				  {
				      "aTargets": [ 0 ],
				      "mData": "maDonVi"
				  },
			      {
				       "aTargets": [ 1 ],
				       "mData": "tenDonVi"
			      },
				  {
				       "targets": -1,
				       "data": null,
				       "defaultContent": "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' id='btnDel'>Xóa</button>"
			      },
			      {
					   "targets": -2,
					   "data": null,
					   "defaultContent": "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' id='btnUpdate'>Sửa</button>"
				  },
			],
			scrollY : "600px",
			scrollCollapse: true,
			dom: 'Blfrtip',
			buttons: [
			          {
		                 text: 'THÊM PHÒNG BAN',
		                 action: function ( e, dt, node, config ) {
		                	 var txtPk = $(pk);
		                	 var txtMaDonVi = $(maDonVi);
		                	 var txtTenDonVi=$(tenDonVi);
		                	 var txtVersion = $(version); 
		                	 txtPk.val(-1);
		                	 txtMaDonVi.val("");
		                	 txtTenDonVi.val("");
		                	 txtVersion.val("");
		                     $('#formDonViChucNang').modal('show');
		                 },
		              }
			          ],
		    colReorder: true,
		    select: true,
		    "language": {
                "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
            }
		});
	
		$('#DonViChucNangTable tbody').on( 'click', 'button', function () {
			var id = $(this)[0].id;
			if("btnDel" == id){
	        var data = table.row($(this).parents('tr')).data();
	        check = confirm("Bạn cóC chắc chắn muốn xóa đối tượng : "+ data['tenDonVi'])
                var pK = data['pk'];
	        	var version = data['version'];
	            if(check==true){
	            	$.ajax({  
	                    url: donViChucNangController+"/delete/"+pK,  
	                    type: 'DELETE',  
	                    success: function (res) {
	                    	alert("Xóa Thành Công");
	                    	table.ajax.reload();	                    }  
	                });
	            }
                    
			}
	    });
		
		$('#DonViChucNangTable tbody').on( 'click', 'button', function () {
			var id = $(this)[0].id;
			if("btnUpdate" == id){
					var data = table.row($(this).parents('tr')).data();
                    var pK = data['pk'];
                    var txtPk = $(pk);
					var txtMaDonVi = $(maDonVi);
                	var txtTenDonVi=$(tenDonVi);
                	var txtVersion = $(version); 
	            	$.ajax({  
	                    url: donViChucNangService+"/getById/"+pK,  
	                    type: 'GET',  
	                    success: function (res) {
	                    	 txtPk.val(pK);
	                    	 txtMaDonVi.val(res.maDonVi);
		                	 txtTenDonVi.val(res.tenDonVi);
		                	 txtVersion.val(res.version);
		                     $('#formDonViChucNang').modal('show');
	                    }
	                });
			}	
	    });
		
    	$("button#btnCapNhap").click(function(e) {
    		var endpointUrl = '/donViChucNangController/add';
    		var txtPk = $(pk);
    		var txtMaDonVi = $(maDonVi);
        	var txtTenDonVi=$(tenDonVi);
        	var txtVersion = $(version); 
           
            var json = new Object();
            json.pk = txtPk.val();
            json.maDonVi = txtMaDonVi.val();
            json.tenDonVi = txtTenDonVi.val();
            json.version = txtVersion.val();
            if(txtPk.val() != -1){
            	var endpointUrl = '/donViChucNangController/update';
            }
            var invalidFields = $("#formTest").find(":invalid");
            if(invalidFields.length == 0){
	            $.ajax({
	                type : "POST",
	                contentType: "application/json; charset=utf-8",
	                data : JSON.stringify(json),
	                url : endpointUrl,
	                success : function(msg) {
	                	$('#formDonViChucNang').modal('toggle');
	                    table.ajax.reload();
	                },
            		error: function (data, textStatus, xhr) {
            			alert(data.responseText);
            		}
	            });
            } else {
            	$("#formTest").submit();
            }    
        });
    	
    	$("button#btnDong").click(function(e) {
    		var txtMaDonVi = $(maDonVi);
    		var txtTenDonVi=$(tenDonVi);
    		txtMaDonVi.val("");
         	txtTenDonVi.val("");
        }); 
    	$("#formDonViChucNang").on('hidden.bs.modal', function () {
            $("#formTest").find('.has-error').removeClass("has-error");
            $("#formTest").find('.has-feedback').removeClass("has-feedback");
        });
} ); 