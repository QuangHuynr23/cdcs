<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="utf-8" />
<title>Thêm Điểm - Quản Lý Sinh Viên Mật Mã</title>
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
				<div class="bg-light rounded-top p-4">
					<h3>Thêm điểm</h3>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded-top p-4">
					<form action="/abc" method="post" id="form">
						<form></form>
						<form action="/def" method="get" id="get-data">
							<div class="row g-4">
								<div class="col-sm-3">
									<div class="form-group mb-3">
										<label for="school_year_id" class="form-label">Năm học</label>
										<select class="form-select" id="bank">
											<option value="0">Chọn</option>
											<option value="2019_2020">2019 - 2020</option>
											<option value="2020_2021">2020 - 2021</option>
											<option value="2021_2022">2021 - 2022</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group mb-3">
										<label for="semester" class="form-label">Kỳ học</label> <select
											class="form-select" id="semester">
											<option value="0">Chọn</option>
											<option value="1">1</option>
											<option value="2">2</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group mb-3">
										<label for="course" class="form-label">Học phần</label> <select
											class="form-select" id="course">
											<option value="0">Chọn</option>
											<option value="ATCTHT3">Lập trình căn bản</option>
											<option value="ATCBLH1">Vật lý đại cương A1</option>
											<option value="ATCTHT1">Tin học đại cương</option>
											<option value="CTCBTT7">Phương pháp tính</option>
											<option value="ATCBNN1">Tiếng Anh 1</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group mb-3">
										<label for="class" class="form-label">Lớp </label> <select
											class="form-select" id="course">
											<option value="0">Chọn</option>
											<option value="L01">L01</option>
											<option value="L02">L02</option>
											<option value="L03">L03</option>
											<option value="L04">L04</option>
											<option value="L05">L05</option>
										</select>
									</div>
								</div>
							</div>
						</form>
						<button type="submit" form="get-data" class="btn btn-primary">Lấy
							danh sách học viên</button>
						<div
							class="table-responsive table-wrapper-scroll-y my-custom-scrollbar">
							<table class="table table-bordered text-center">
								<thead>
								<col>
								<colgroup span="2"></colgroup>
								<colgroup span="2"></colgroup>
								<tr>
									<td rowspan="2">STT</td>
									<td rowspan="2">Mã học viên</td>
									<th colspan="2" scope="colgroup">Họ và tên</th>
									<td rowspan="2">Lớp</td>
									<th colspan="2" scope="colgroup">Điểm thành phần</th>
									<th colspan="2" scope="colgroup">Điểm thi</th>
								</tr>
								<tr>
									<th scope="col">Họ đệm</th>
									<th scope="col">Tên</th>
									<th scope="col">TP1</th>
									<th scope="col">TP2</th>
									<th scope="col">Lần 1</th>
									<th scope="col">Lần 2</th>
								</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>AT170228</td>
										<td>Nguyễn Quang</td>
										<td>Huy</td>
										<td>AT17B</td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>AT1233</td>
										<td>Nguyễn Thế</td>
										<td>Long</td>
										<td>AT17B</td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>AT170252</td>
										<td>Bùi Thị Quỳnh</td>
										<td>Trang</td>
										<td>AT17B</td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
									</tr>
									<tr>
										<th scope="row">4</th>
										<td>AT170257</td>
										<td>Triệu Đức</td>
										<td>Vinh</td>
										<td>AT17B</td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
										<td><input type="number" class="form-control" id="grade1"
											name="grade1" autocomplete="off" min="0" max="10" /></td>
									</tr>

								</tbody>

							</table>
						</div>
					</form>
					<button type="submit" class="btn btn-primary" form="form">Thêm
						điểm</button>
				</div>
			</div>
			<!-- Section End -->
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
		</div>
		<!-- Content End -->
	</div>

</body>
</html>