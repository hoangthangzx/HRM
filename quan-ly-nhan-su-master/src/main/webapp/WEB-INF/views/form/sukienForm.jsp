<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="formsukien" class="modal fade" role="dialog">
	<form id="formTest" method="post" action="#" class="valida" autocomplete="off" novalidate="novalidate">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Sự Kiện</h4>
				</div>
				<div class="modal-body">
					<input class="form-control" id="pk" type="hidden">
					<input class="form-control" id="version" type="hidden">
					<div class="form-group">
						<label for="tenSuKien">Tên sự kiện</label> 
						<input class="form-control" id="tenSuKien" name="tenSuKien" required="true" type="text"></br>
					</div>
					<div class="form-group">
						<label for="moTa">Mô Tả</label> 
						<input class="form-control" id="moTa" name="moTa" required="true" type="text"></br>
					</div>
					<div class="form-group">
						<label for="ngayBatDau">Ngày Bắt Đầu</label> 
						<input class="form-control" id="ngayBatDau" name="ngayBatDau" required="true" type="date"></br>
					</div>
					<div class="form-group">
						<label for="ngayKetThuc">Ngày Kết Thúc</label> 
						<input class="form-control" id="ngayKetThuc" name="ngayKetThuc" required="true" type="date"></br>
						
					</div>
					<div class="form-group">
						<label for="diaDiem">Địa Điểm</label> 
						<input class="form-control" id="diaDiem" name="diaDiem" required="true" type="text"></br>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="btnCapNhap">Cập Nhập</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" id="btnDong">Đóng</button>
				</div>
			</div>
		</div>
	</form>
</div>