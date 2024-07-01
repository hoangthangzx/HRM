<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

	<!-- /nav-->
	<div class="w3_agileits_top_nav">
		<ul id="gn-menu" class="gn-menu-main">
			<!-- /nav_agile_w3l -->
			<li class="gn-trigger"><a class="gn-icon gn-icon-menu"><i class="fa fa-bars"
						aria-hidden="true"></i><span>Menu</span></a>
				<nav class="gn-menu-wrapper">
					<div class="gn-scroller scrollbar1">
						<ul class="gn-menu agile_menu_drop">
							<li><a href="/"> <i class="fa fa-tachometer"></i> Trang chủ
								</a></li>
							<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>Quản lý nhân viên<i
										class="fa fa-angle-down" aria-hidden="true"></i></a>
								<ul class="gn-submenu">
									<li id="dsnv" class="mini_list_agile"><a href="/canBoController/show"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Danh sách nhân
											viên</a></li>
									<li id="qdkt" class="mini_list_agile"><a href="/quyetDinhKhenThuongController/qdkt"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Quyết định khen
											thưởng</a></li>
									<li id="qdkl" class="mini_list_agile"><a href="/quyetDinhKyLuatController/qdkl"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Quyết định Kỷ Luật</a>
									</li>
									<li id="HD" class="mini_list_agile"><a href="/hopDongCanBoController/hopdong"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Hợp Đồng Nhân Viên</a>
									</li>
									<li id="menu-kg" class="mini_list_w3"><a href="/danhSachKhoanGonController/show"> <i
												class="fa fa-caret-right" aria-hidden="true"></i> Danh sách khoán gọn
										</a></li>
									<li id="menu-kn" class="mini_list_w3"><a href="/danhSachKiemNhiemController/show">
											<i class="fa fa-caret-right" aria-hidden="true"></i> Danh sách kiêm nhiệm
										</a></li>
									<!-- <li class="mini_list_w3"><a href="/danhSachThamNienController/show"> <i
												class="fa fa-caret-right" aria-hidden="true"></i>  Danh sách thâm niên
										</a></li> -->
								</ul>
							</li>
							<li id="menu-hd"><a href="#"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Quản lý
									hợp đồng <i class="fa fa-angle-down" aria-hidden="true"></i></a>
								<ul class="gn-submenu">
									<li class="mini_list_agile"><a href="/hopDongCanBoController/show"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Hợp đồng nhân viên</a>
									</li>
									<li class="mini_list_w3"><a href="/hopDongNganHanController/show"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Hợp đồng ngắn hạn</a>
									</li>
								</ul>
							</li>

							<!-- <li><a href="#"><i class="fa fa-list"
										aria-hidden="true"></i> Lương, Tài sản<i class="fa fa-angle-down"
										aria-hidden="true"> </i></a>
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="/luongCanBoController/show"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Quá trình lương</a></li>
										<li class="mini_list_w3"><a href="/keKhaiTaiSanController/show"> <i
												class="fa fa-caret-right" aria-hidden="true"></i> Kê khai tài sản
										</a></li>

									</ul></li> -->

							<li id="menu-qd"><a href="#"><i class="fa fa-list" aria-hidden="true"></i>Quản lý quyết định
									<i class="fa fa-angle-down" aria-hidden="true"> </i></a>
								<ul class="gn-submenu">
									<li class="mini_list_agile"><a href="/quyetDinhController/show"><i
												class="fa fa-caret-right" aria-hidden="true"></i> Danh sách quyết
											định</a></li>
									<li class="mini_list_w3"><a href="/quyetDinhKhenThuongController/show"> <i
												class="fa fa-caret-right" aria-hidden="true"></i> Quyết định khen thưởng
										</a></li>
									<li class="mini_list_w3"><a href="/quyetDinhKyLuatController/show"> <i
												class="fa fa-caret-right" aria-hidden="true"></i> Quyết định kỷ luật
										</a></li>

								</ul>
							</li>

							<li class="page"><a href="#"><i class="fa fa-files-o" aria-hidden="true"></i> Danh mục <i
										class="fa fa-angle-down" aria-hidden="true"></i></a>
								<ul class="gn-submenu">
									<div id="menu-danh-muc">

										<li class="mini_list_agile"><a href="/chucVuController/show"> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Chức vụ
											</a></li>
										<li class="mini_list_w3"><a href="/ngachCongChucController/show"> <i
													class="fa fa-caret-right" aria-hidden="true"></i> Chuyên môn
											</a></li>
										<li class="mini_list_agile error"><a href="/loaiHopDongController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Loại hợp đồng
											</a></li>
										<li class="mini_list_agile error"><a href="/loaiQuyetDinhController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Loại quyết định
											</a></li>
										<li class="mini_list_agile error"><a href="/danTocController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Dân tộc
											</a></li>
										<li class="mini_list_agile error"><a href="/tonGiaoController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Tôn giáo
											</a></li>
										<li class="mini_list_agile error"><a href="/donViChucNangController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Phòng ban
											</a></li>
										<li class="mini_list_agile error"><a href="/LuongController/show">
												<i class="fa fa-caret-right" aria-hidden="true"></i> Lương
											</a></li>
									</div>
									<li id="np" class="mini_list_agile error"><a href="/nghiphepController/show">
											<i class="fa fa-caret-right" aria-hidden="true"></i> Nghỉ Phép
										</a></li>
										<li id="npnv" class="mini_list_agile error"><a href="/nghiphepController/nghiphep">
											<i class="fa fa-caret-right" aria-hidden="true"></i> Nghỉ Phép
										</a></li>
									<li id="sk" class="mini_list_agile error"><a href="/sukienController/show">
											<i  class="fa fa-caret-right" aria-hidden="true"></i>Sự Kiện
										</a></li>
											<li id="sknv" class="mini_list_agile error"><a href="/sukienController/sukien">
											<i class="fa fa-caret-right" aria-hidden="true"></i>Sự Kiện
										</a></li>
								</ul>
							</li>
							<li><a href="#"> <i class="fa fa-suitcase" aria-hidden="true"></i>Thoát <i
										class="fa fa-angle-down" aria-hidden="true"></i></a>
								<ul class="gn-submenu">
									<li class="mini_list_agile"><a href="/loginController"> <i class="fa fa-caret-right"
												aria-hidden="true"></i> Đăng xuất
										</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /gn-scroller -->
				</nav>
			</li>
			<!-- //nav_agile_w3l -->
			<script>
				$(document).ready(function () {
					// Construct pk from sessionScope.authorities
					var pk = "";
					<c:forEach var="authority" items="${sessionScope.authorities}">
						pk += "${authority}";
					</c:forEach>

					// Call endpoint getById with constructed pk
					$.ajax({
						url: "/canBoService/getById/" + pk,
						type: "GET",
						success: function (data) {
							// Handle the result into CanBoDTO
							var canBoDTO = data;

							// Display information on the HTML page
							$("#result").html(
								"<p>Thông tin cán bộ:</p>" +
								"<p>Họ và tên: " + canBoDTO.ten + "</p>" +
								"<p>Chức danh: " + canBoDTO.chucDanh + "</p>"
								// Add other fields as per the structure of CanBoDTO
							);
						},
						error: function (xhr, status, error) {
							// Handle error if any
							console.error("Error:", error);
						}
					});

				});
				$(document).ready(function () {
					// Construct pk from sessionScope.authorities
					var pk = "";
					<c:forEach var="authority" items="${sessionScope.authorities}">
						pk += "${authority}";
					</c:forEach>

					// Call endpoint getById with constructed pk
					$.ajax({
						url: "/canBoService/getById/" + pk,
						type: "GET",
						success: function (data) {
							// Handle the result into CanBoDTO
							var canBoDTO = data;

							// Display information on the HTML page
							$("#result").html(
								"<p>Thông tin cán bộ:</p>" +
								"<p>Họ và tên: " + canBoDTO.ten + "</p>" +
								"<p>Chức danh: " + canBoDTO.chucDanh + "</p>"
								// Add other fields as per the structure of CanBoDTO
							);

							// Hide menu items based on the role
							if (canBoDTO.chucDanh !== "Giám Đốc") {
								$("#menu-danh-muc").hide();
								$("#menu-hd").hide();
								$("#menu-kn").hide();
								$("#menu-kg").hide();
								$("#menu-qd").hide();
								$("#dsnv").hide();	$("#np").hide();
								$("#sk").hide();
							}
							if (canBoDTO.chucDanh == "Giám Đốc"){
								$("#qdkt").hide();
								$("#qdkl").hide();
								$("#HD").hide();
								$("#npnv").hide();
								$("#sknv").hide();
								
							}
						},
						error: function (xhr, status, error) {
							// Handle error if any
							console.error("Error:", error);
						}
					});

				});

			</script>