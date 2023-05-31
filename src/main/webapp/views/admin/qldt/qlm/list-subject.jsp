<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Danh Sách Môn Học - Quản Lý Sinh Viên Mật Mã</title>
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
						<h3>Danh Sách Môn Học</h3>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<form action="" method="get" id="form">
						<div class="row g-4">
							<div class="col-sm-4">
								<div class="form-group mb-3">
									<label for="school_year_id" class="form-label">Năm học</label>
									<select class="form-select" id="bank">
										<option value="0">Chọn</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group mb-3">
									<label for="semester" class="form-label">Kỳ học</label> <select
										class="form-select" id="semester">
										<option value="0">Chọn</option>
										<option value="1">1</option>
										<option value="2">2</option>
									</select>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group mb-3">
									<label for="department" class="form-label">Khoa</label> <select
										class="form-select" id="department">
										<option value="0">Chọn</option>
										<option value="AT">An toàn thông tin</option>
										<option value="CT">Công nghệ thông tin</option>
										<option value="CB">Cơ bản</option>
										<option value="MM">Mật mã</option>
										<option value="DT">Điện tử viễn thông</option>
									</select>
								</div>
							</div>
						</div>
						<button type="submit" form="form" class="btn btn-primary">Tìm
							kiếm môn học</button>

					</form>
					<div
						class="table-responsive table-wrapper-scroll-y my-custom-scrollbar">
						<table class="table table-hover table-striped mb-0">
							<thead>
								<tr>
									<th scope="col">STT</th>
									<th scope="col">Mã Môn</th>
									<th scope="col">Tên Môn</th>
									<th scope="col">Khoa</th>
									<th scope="col">Kỳ học</th>
									<th scope="col">&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>CTDLGT</td>
									<td>Cấu trúc dữ liệu và giải thuật</td>
									<td>Công nghệ thông tin</td>
									<td>5</td>
									<td><a class="btn btn-primary btn-sm"
										href="<c:url value='/admin/qldt/qlmh/edit-subject'/>"> <i class="bi bi-pencil-square"></i>
									</a> <a href="#" class="btn btn-danger btn-sm"
										onclick="removeRow(2,  ' /admin/products/destroy')"> <i
											class="bi bi-trash-fill"></i>
									</a></td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>CTDLGT</td>
									<td>Cấu trúc dữ liệu và giải thuật</td>
									<td>Công nghệ thông tin</td>
									<td>5</td>
									<td><a class="btn btn-primary btn-sm"
										href="edit-subject.html"> <i class="bi bi-pencil-square"></i>
									</a> <a href="<c:url value='/admin/qldt/qlmh/edit-subject'/>" class="btn btn-danger btn-sm"
										onclick="removeRow(2,  ' /admin/products/destroy')"> <i
											class="bi bi-trash-fill"></i>
									</a></td>
								</tr>
								

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4 ">
				<div class="bg-light rounded-top p-4">
					<div class="row">
						<div class="col-12 col-lg-4 text-center">
							&copy; <a href="#">Site Name</a>, All Right Reserved.
						</div>
						<div class="col-12 col-lg-4 text-center">
							Designed By Nguyễn Quang Huy<a href="#">Laravel Team</a>
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