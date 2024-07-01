$(document).ready(function () {
    var sukienService = "/sukienService";
    var sukienController = "/sukienController";
    var table = $('#sukienTable').DataTable({
        "sAjaxSource": sukienService + "/getAll",
        "sAjaxDataProp": "",
        "order": [[0, "asc"]],
        "aoColumnDefs": [
            {
                "aTargets": [0],
                "mData": "tenSuKien"
            }, {
                "aTargets": [1],
                "mData": "moTa"
            },
            {
                "aTargets": [2],
                "mData": "ngayBatDau"
            },
            {
                "aTargets": [3],
                "mData": "ngayKetThuc"
            },
            {
                "aTargets": [4],
                "mData": "diaDiem"
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
                
                text: 'Tạo Sự Kiện',
                action: function (e, dt, node, config) {
                    var txtPk = $(pk);
                    var txttenSuKien = $(tenSuKien);
                    var txtmoTa = $(moTa);
                    var txtngayBatDau = $(ngayBatDau);
                    var txtngayKetThuc = $(ngayKetThuc);
                    var txtdiaDiem = $(diaDiem);
                  

                    txtPk.val(-1);
                    txttenSuKien.val();
                    txtmoTa.val("");
                    txtngayBatDau.val("");
                    txtngayKetThuc.val("");
                    txtdiaDiem.val("");
                 
                    $('#formsukien').modal('show');
                },
            }
        ],
        colReorder: true,
        select: true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.13/i18n/Vietnamese.json"
        }
    });

    $('#sukienTable tbody').on('click', 'button', function () {
        var id = $(this)[0].id;
        if ("btnDel" == id) {
            var data = table.row($(this).parents('tr')).data();
            check = confirm("Bạn có chắc chắn muốn hủy lịch ")
            var pK = data['pk'];

            if (check == true) {
                $.ajax({
                    url: sukienController + "/delete/" + pK,
                    type: 'DELETE',
                    success: function (res) {
                        alert("Xóa Thành Công");
                        table.ajax.reload();
                    }
                });
            }

        }
    });

    $('#sukienTable tbody').on('click', 'button', function () {
        var id = $(this)[0].id;
        if ("btnUpdate" == id) {
            var data = table.row($(this).parents('tr')).data();
            var pK = data['pk'];
            var txtPk = $(pk);
            var txttenSuKien = $(tenSuKien);
            var txtmoTa = $(moTa);
            var txtngayBatDau = $(ngayBatDau);
            var txtngayKetThuc = $(ngayKetThuc);
            var txtdiaDiem = $(diaDiem);
           
            $.ajax({
                url: sukienService + "/getById/" + pK,
                type: 'GET',
                success: function (res) {
                    txtPk.val(pK);
                    txttenSuKien.val(res.tenSuKien);

                    txtmoTa.val(res.moTa);
                    txtngayBatDau.val(res.ngayBatDau);
                    txtngayKetThuc.val(res.ngayKetThuc);
                    txtdiaDiem.val(res.diaDiem);
                
                    $('#formsukien').modal('show');
                }
            });
        }
    });

    //twitter bootstrap btnCapNhap
    $("button#btnCapNhap").click(function (e) {
        var endpointUrl = '/sukienController/add';
        var authorities = "${sessionScope.authorities}";
        var txtPk = $("#pk");
        var txttenSuKien = $("#tenSuKien");
        var txtmoTa = $("#moTa");
        var txtngayBatDau = $("#ngayBatDau");
        var txtngayKetThuc = $("#ngayKetThuc");
        var txtdiaDiem = $("#diaDiem");
    
        
        var json = {
            pk: txtPk.val(),
            tenSuKien:txttenSuKien.val(),
            moTa: txtmoTa.val(),
            ngayBatDau: txtngayBatDau.val(),
            ngayKetThuc: txtngayKetThuc.val(),
            diaDiem: txtdiaDiem.val(),
           
        };
    
        if (txtPk.val() != -1) {
            endpointUrl = '/sukienController/update';
        }
    
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(json),
            url: endpointUrl,
            success: function (msg) {
                $('#formsukien').modal('toggle');
                table.ajax.reload();
            },
            error: function (data, textStatus, xhr) {
                alert(data.responseText);
            }
        });
    });
    
    $("button#btnDong").click(function (e) {
        var txttenSuKien = $(tenSuKien);
        var txtmoTa = $(moTa);
        var txtngayBatDau = $(ngayBatDau);
        var txtngayKetThuc = $(ngayKetThuc);
        var txtdiaDiem = $(diaDiem);
      
        txttenSuKien.val(""); txtmoTa.val("");
        txtngayBatDau.val("");
        txtngayKetThuc.val("");
        txtdiaDiem.val("");
       

    });
    $("#formsukien").on('hidden.bs.modal', function () {
        $("#formTest").find('.has-error').removeClass("has-error");
        $("#formTest").find('.has-feedback').removeClass("has-feedback");
    });
});	 