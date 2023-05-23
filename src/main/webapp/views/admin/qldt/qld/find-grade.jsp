<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="utf-8" />
<title>Tra Cứu Điểm - Quản Lý Sinh Viên Mật Mã</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
</head>

<body>
	<div class="container-fluid position-relative bg-white d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Content Start -->
		<div class="content">

			<!-- Section Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<div class="row g-4">
						<h3>Tra Cứu Điểm</h3>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<div class="row">
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Khoá</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Chọn</option>
									<option value="h33">H33</option>
									<option value="h34">H34</option>
									<option value="h35">H35</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Khoa</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Chọn</option>
									<option value="ATTT">An toàn thông tin</option>
									<option value="CNTT">Công nghệ thông tin</option>
									<option value="CNTT">Điện tử viễn thông</option>
									<option value="MM">Mật mã</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Địa điểm</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Tất cả</option>
									<option value="HN">141 Chiến Thắng, Tân Triều, Thanh
										Trì, Hà Nội</option>
									<option value="HCM">Số 17A Cộng Hòa, Phường 4, Quận
										Tân Bình, Thành phố Hồ Chí Minh</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Ngành</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Tất cả</option>
									<option value="KNATM">Kỹ nghệ an toàn mạng</option>
									<option value="2">An toàn ứng dụng</option>
									<option value="2">Công nghệ phần mềm an toàn</option>
									<option value="3">Kỹ thuật phần mềm nhúng và di động</option>
									<option value="3">Hệ thống nhúng và điều khiển tự động</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Lớp</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Chọn</option>
									<option value="AT16A">AT16A</option>
									<option value="AT16B">AT16B</option>
									<option value="AT16C">AT16C</option>
									<option value="AT16D">AT16D</option>
									<option value="AT16E">AT16E</option>
									<option value="AT16G">AT16G</option>
									<option value="AT16H">AT16H</option>
								</select>
							</div>
						</div>
						<div class="col-lg-2 col-sm-2 col-xs-2">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Loại</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Toàn bộ</option>
									<option value="1">Bình thường</option>
									<option value="2">Tạm ngừng học</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3 col-sm-3 col-xs-3">
							<div class="form-group mb-3">
								<label for="affiliate" class="form-label">Học viên</label> <select
									class="form-select" id="affiliate" form="form-input">
									<option value="0">Chọn</option>
									<option value="1">Văn Hoàng Phúc</option>
									<option value="2">Trịnh Công Minh</option>
									<option value="3">Hoàng Ngọc Anh</option>
									<option value="3">Lê Tiến Đạt</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4">
							<div class="form-group mb-3">
								<label for="btn" class="form-label">Tra cứu</label> <br>
								<button class="btn btn-primary" id="btn">Tìm học viên</button>
								<button class="btn btn-primary" id="btn">Thêm cột</button>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 col-sm-6 col-xs-6">
								<div class="form-group mb-3">
									<label for="subject">Loại học phần</label>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="subject"
											id="subject" value="1" checked="" /> <label
											class="form-check-label" for="subject"> Toàn bộ </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="subject"
											id="subject" value="0" /> <label class="form-check-label"
											for="subject"> Nhóm ngành 2 </label>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-6 col-xs-6">
								<div class="form-group mb-3">
									<label for="affiliate" class="form-label">Học phần</label> <select
										class="form-select" id="affiliate" form="form-input">
										<option value="0">Toàn bộ</option>
										<option value="1">Giáo dục thể chất</option>
										<option value="2">Tin học đại cương</option>
										<option value="2">Tin học đại cương</option>
										<option value="2">Tin học đại cương</option>
										<option value="2">Tin học đại cương</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-4 col-xs-4">
							<div class="form-group mb-3">
								<label for="bank" class="form-label">Năm học</label> <select
									class="form-select" id="bank">
									<option value="0">Chọn</option>
									<option value="A">Ngân hàng A</option>
									<option value="B">Ngân hàng B</option>
									<option value="C">Ngân hàng C</option>
									<option value="D">Ngân hàng D</option>
									<option value="E">Ngân hàng E</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4">
							<div class="form-group mb-3">
								<label for="bank" class="form-label">Học kỳ</label> <select
									class="form-select" id="bank">
									<option value="0">Chọn</option>
									<option value="A">Ngân hàng A</option>
									<option value="B">Ngân hàng B</option>
									<option value="C">Ngân hàng C</option>
									<option value="D">Ngân hàng D</option>
									<option value="E">Ngân hàng E</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4">
							<div class="form-group mb-3">
								<label for="bank" class="form-label">Đợt học</label> <select
									class="form-select" id="bank">
									<option value="0">Chọn</option>
									<option value="A">Ngân hàng A</option>
									<option value="B">Ngân hàng B</option>
									<option value="C">Ngân hàng C</option>
									<option value="D">Ngân hàng D</option>
									<option value="E">Ngân hàng E</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-xs-4 col-sm-4">
							<button class="btn btn-primary" type="submit">Xuất file
								excel</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<h4 class="text-center">
						Điểm học tập học viên <span>Nguyễn Minh Hoàng</span>
					</h4>
					<div
						class="table-responsive table-wrapper-scroll-y my-custom-scrollbar">
						<table class="table table-bordered text-center">
							<col>
							<colgroup span="2"></colgroup>
							<colgroup span="2"></colgroup>
							<tr>
								<th colspan="12" scope="colgroup">Học viên</th>
								<td colspan="5">Môn ATCSDL</td>
								<td colspan="5">Môn ATCSDL</td>
								<td colspan="5">Môn ATCSDL</td>
							</tr>
							<tr>
								<th scope="col">STT</th>
								<th scope="col">Mã học viên</th>
								<th scope="col">Họ đệm</th>
								<th scope="col">Tên</th>
								<th scope="col">Ngày sinh</th>
								<th scope="col">Tổng TC</th>
								<th scope="col">Số TCTB</th>
								<th scope="col">STCTLN</th>
								<th scope="col">DTBC</th>
								<th scope="col">DCTB(10)</th>
								<th scope="col">Số môn KD</th>
								<th scope="col">Số TC KD</th>
								<th scope="col">TP1</th>
								<th scope="col">TP2</th>
								<th scope="col">THI</th>
								<th scope="col">TKHP</th>
								<th scope="col">Chữ</th>
								<th scope="col">TP1</th>
								<th scope="col">TP2</th>
								<th scope="col">THI</th>
								<th scope="col">TKHP</th>
								<th scope="col">Chữ</th>
								<th scope="col">TP1</th>
								<th scope="col">TP2</th>
								<th scope="col">THI</th>
								<th scope="col">TKHP</th>
								<th scope="col">Chữ</th>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td>AT150121</td>
								<td>Nguyễn Minh</td>
								<td>Hoàng</td>
								<td>AT15A</td>
								<td>9</td>
								<td>9</td>
								<td>3</td>
								<td>7</td>
							</tr>

						</table>
					</div>
				</div>
			</div>
			<!-- Section End -->


		</div>
		<!-- Content End -->
	</div>

	<!-- Footer Start -->
	<div class="container-fluid pt-4 px-4 ">
		<div class="bg-light rounded-top p-4">
			<div class="row">
				<div class="col-12 col-lg-4 text-center">
					&copy; <a href="#">Site Name</a>, All Right Reserved.
				</div>
				<div class="col-12 col-lg-4 text-center">
					Designed By Nguyễn Quang Huy <a href="#">Laravel Team</a>
				</div>
				<div class="col-12 col-lg-4 text-center">
					<a href="#"> <i class="bi bi-github"></i>
					</a> <a href="#"> <i class="bi bi-facebook"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->
</body>
</html>