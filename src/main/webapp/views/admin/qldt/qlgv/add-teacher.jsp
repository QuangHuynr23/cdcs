<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html lang="vi">

<head>
<meta charset="utf-8" />
<title>Thêm Giảng Viên - Quản Lý Sinh Viên Mật Mã</title>
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
						<h3>Thêm Giảng Viên</h3>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<form action="" id="form">
						<div class="row g-4 mb-3">
							<div class="col-sm-6 mb-3">
								<div class="row g-4 mb-3">
									<div class="form-group mb-3">
										<label for="f-name" class="form-label">Họ đệm</label> <input
											type="text" class="form-control" id="f-name" name="f-name"
											autocomplete="off" />
									</div>
								</div>
								<div class="row g-4">
									<div class="form-group mb-3">
										<label for="l-name" class="form-label">Tên</label> <input
											type="text" class="form-control" id="l-name" name="l-name"
											autocomplete="off" />
									</div>
								</div>
							</div>
							<div class="col-sm-6 d-flex justify-content-center">
								<div class="form-group">
									<a href="#" class=""> <input type="file" accept="image/*"
										id="upload" class="d-none"> <label for="upload"
										class="remove"> <i
											class="fa-5x fa-solid fa-circle-plus border border-primary p-5"></i>
									</label>
										<div id="image_show"></div> <input type="hidden" value="">
									</a>
								</div>
							</div>
						</div>
						<div class="row g-4">
							<div class="col-sm-6">
								<div class="form-group mb-3">
									<label for="code" class="form-label">Mã Giảng Viên</label> <input
										type="text" class="form-control" id="code" name="code"
										autocomplete="off" />
								</div>
							</div>
							<div class="col-sm-6 ">
								<div class="form-group mb-3">
									<label for="gender">Giới Tính</label>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender"
											id="gender" value="1" checked="" /> <label
											class="form-check-label" for="gender"> Nam </label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender"
											id="gender" value="0" /> <label class="form-check-label"
											for="gender"> Nữ </label>
									</div>
								</div>
							</div>
						</div>
						<div class="row g-4">
							<div class="col-sm-6">
								<div class="form-group mb-3">
									<label for="department" class="form-label">Khoa</label> <select
										class="form-select" id="department">
										<option value="0">Chọn</option>
										<option value="CB">Khoa Cơ Bản</option>
										<option value="AT">Khoa An Toàn Thông Tin</option>
										<option value="CT">Khoa Công Nghệ Thông TIn</option>
										<option value="DT">Khoa Điện Tử Viễn Thông</option>
										<option value="MM">Khoa Mật Mã</option>
									</select>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group mb-3">
									<label for="phone" class="form-label">Số Điện Thoại</label> <input
										type="text" class="form-control" id="phone" name="phone"
										autocomplete="off" />
								</div>
							</div>
						</div>
						<div class="row g-4">
							<div class="col-sm-6">
								<div class="form-group mb-3">
									<label for="date_of_birth" class="form-label">Ngày Sinh</label>
									<input type="date" class="form-control" id="date_of_birth"
										name="date_of_birth" autocomplete="off" />
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group mb-3">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" id="email" name="email"
										autocomplete="off" />
								</div>
							</div>
						</div>
					</form>
					<button type="submit" class="btn btn-primary" form="form">Thêm
						Giảng Viên</button>
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