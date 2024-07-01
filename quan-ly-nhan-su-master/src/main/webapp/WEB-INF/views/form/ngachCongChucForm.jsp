<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="formNgachCongChuc" class="modal fade" role="dialog">
	<form id="formTest" method="post" action="#" class="valida" autocomplete="off" novalidate="novalidate">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">NGẠCH CÔNG CHỨC</h4>
				</div>
				<div class="modal-body">
					<input class="form-control" id="pk" type="hidden">
					<input class="form-control" id="version" type="hidden">
					<div class="form-group">
						<label for="maNgach">Mã Ngạch</label>
						<input class="form-control" id="maNgach" name="maNgach" required="true" type="text">
					</div>
					<div class="form-group">
						<label for="tenNgach">Tên Ngạch</label>
						<input class="form-control" id="tenNgach" name="tenNgach" required="true" type="text">
					</div>
					<div class="form-group">
						<label for="soNamNangBacLuong">Số Năm Nâng Bậc Lương</label>
						<input class="form-control" id="soNamNangBacLuong" name="soNamNangBacLuong" required="true" type="text">
					</div>
			
						<div class="form-group">
						<label for="donViChucNang">Bậc lương</label>
						<select style="height: 50px" class="form-control" id="pkbacluong" name="pkbacluong">
							
							<c:forEach var="dto" items="${bacluongLists}">
												<option required="true" value="${dto.pk}">${dto.heSoLuong}</option>
											</c:forEach>
						</select>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="btnCapNhap">Cập Nhật</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" id="btnDong">Đóng</button>
				</div>
			</div>
		</div>
	</form>
</div>
