$(document).ready(function () {
    var NghiPhepService = "/NghiPhepService";
    var nghiphepController = "/nghiphepController";
    var table = $('#nghiphepTable').DataTable({
        "sAjaxSource": NghiPhepService + "/getAll",
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
            {
                "targets": -2,
                "data": null,
                "defaultContent": "<button type='button' class='btn btn-info btn-lg' data-toggle='modal' id='btnUpdate'>Sửa</button>"
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
                    txtcanBo_pk.val();
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