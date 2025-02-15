$(document).ready(function() {
    var bacluongservice = "/bacluongservice";
    var LuongController = "/LuongController";
    var table = $('#BacLuongTable').DataTable({
        "sAjaxSource" : bacluongservice+"/getAll",
        "sAjaxDataProp" : "",
        "order" : [ [ 0, "asc" ] ],
        "aoColumnDefs": [ 
              {
                   "aTargets": [ 0 ],
                   "mData": "maBacLuong"
              },
              {
                "aTargets": [ 1 ],
                "mData": "heSoLuong"
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
                     text: 'THÊM Bậc Lương',
                     action: function ( e, dt, node, config ) {
                         var txtPk = $(pk);
                         var txtmaBacLuong=$(maBacLuong);
                         var txtheSoLuong = $(heSoLuong);
                         txtPk.val(-1);
                         txtmaBacLuong.val("");
                         txtheSoLuong.val("");
                         
                         $('#formBacLuong').modal('show');
                     },
                  }
                  ],
        colReorder: true,
        select: true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
        }
    });

    $('#BacLuongTable tbody').on( 'click', 'button', function () {
        var id = $(this)[0].id;
        if("btnDel" == id){
        var data = table.row($(this).parents('tr')).data();
        check = confirm("Bạn có chắc chắn muốn xóa đối tượng : "+ data['maBacLuong'])
            var pK = data['pk'];
            var heSoLuong = data['heSoLuong'];
            if(check==true){
                $.ajax({  
                    url: LuongController+"/delete/"+pK+"?heSoLuong="+heSoLuong,  
                    type: 'DELETE',  
                    success: function (res) {
                        alert("Xóa Thành Công");
                        table.ajax.reload();	                    }  
                });
            }
                
        }
    });
    
    $('#BacLuongTable tbody').on( 'click', 'button', function () {
        var id = $(this)[0].id;
        if("btnUpdate" == id){
                var data = table.row($(this).parents('tr')).data();
                var pK = data['pk'];
                var txtPk = $(pk);
                var txtmaBacLuong=$(maBacLuong);
                var txtheSoLuong = $(heSoLuong);
                $.ajax({  
                    url: bacluongservice+"/getById/"+pK,  
                    type: 'GET',  
                    success: function (res) {
                         txtPk.val(pK);
                         txtmaBacLuong.val(res.maBacLuong);
                         txtheSoLuong.val(res.heSoLuong);
                         $('#formBacLuong').modal('show');
                    }
                });
        }	
    });
    
    //twitter bootstrap btnCapNhap
    $("button#btnCapNhap").click(function(e) {

         var endpointUrl = '/LuongController/add';
         var txtPk = $(pk);
         var txtmaBacLuong=$(maBacLuong);
         var txtheSoLuong = $(heSoLuong);
        
        var json = new Object();
        json.pk = txtPk.val();
        json.maBacLuong = txtmaBacLuong.val();
        json.heSoLuong = txtheSoLuong.val();
        if(txtPk.val() != -1){
            var endpointUrl = '/LuongController/update';
        }
        var invalidFields = $("#formTest").find(":invalid");
        if(invalidFields.length == 0){
            $.ajax({
                type : "POST",
                contentType: "application/json; charset=utf-8",
                data : JSON.stringify(json),
                url : endpointUrl,
                success : function(msg) {
                    $('#formBacLuong').modal('toggle');
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
        var txtmaBacLuong=$(maBacLuong);
         txtmaBacLuong.val("");
    }); 
    $("#formBacLuong").on('hidden.bs.modal', function () {
        $("#formTest").find('.has-error').removeClass("has-error");
        $("#formTest").find('.has-feedback').removeClass("has-feedback");
    });
} );	 