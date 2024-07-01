<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
			<div id="formnghiphep" class="modal fade" role="dialog">
				<form id="formTest" method="post" action="#" class="valida" autocomplete="off" novalidate="novalidate">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Nghỉ Phép </h4>
							</div>
							<div class="modal-body">
								<input class="form-control" id="pk" type="hidden">
								<input class="form-control" id="version" type="hidden">

								</div>
						<div  class="form-group">
									<label for="canBo_pk">canBo_pk</label>
								
<input  type="text" id="canBo_pk" name="canBo_pk" class="form-control" required="true" value="">
</div>
								<div  class="form-group">
									<label for="ngayBatDau">ngayBatDau</label>
									<input class="form-control" id="ngayBatDau" name="ngayBatDau" required="true"
										type="date"></br>
								</div>
								<div  class="form-group">
									<label for="ngayKetThuc">ngayKetThuc</label>
									<input class="form-control" id="ngayKetThuc" name="ngayKetThuc" required="true"
										type="date"></br>
								</div>
								<div  class="form-group">
									<label for="lyDo">lyDo</label>
									<input class="form-control" id="lyDo" name="lyDo" required="true" type="text"></br>
								</div>
							
			<select style="display: n" class="form-control" id="trangThai" name="trangThai" >
    <option value="Chờ duyệt" selected>Chờ duyệt</option>
    <option value="Duyệt">Duyệt</option>
</select>

							
								<div class="form-group">
									<label for="ngayYeuCau">Ngày Gửi</label>
									<input class="form-control" id="ngayYeuCau" name="ngayYeuCau" required="true"
										type="date">
								</div>
							
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" id="btnCapNhap">Cập Nhập</button>
								<button type="button" class="btn btn-default" data-dismiss="modal"
									id="btnDong">Đóng</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<script>
			</script>