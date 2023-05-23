<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<html>
<head>
<meta charset="UTF-8">
<title>Hồ sơ học viên - Quản Lý Sinh Viên Mật Mã</title>
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
			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
				<a href="../../index.html"
					class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<img src="../../img/logoico.png" alt="logo" />
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i>
				</a>
				<form class="d-none d-md-flex ms-4">
					<input class="form-control border-0" type="search"
						placeholder="Search" />
				</form>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2" src="../../img/male.png" alt=""
							style="width: 40px; height: 40px" /> <span
							class="d-none d-lg-inline-flex">Văn Hoàng Phúc</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">Settings</a> <a href="#"
								class="dropdown-item">Đăng xuất</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->

			<!-- Section Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<div class="row g-4">
						<h3>Hồ sơ học viên</h3>
					</div>
				</div>
			</div>

			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<div class="row mb-5">
						<div class="col-lg-6 col-sm-6 col-xs-6">
							<a href="add-student.html" type="button"
								class="btn btn-block btn-primary btn-lg"
								style="width: 70%; height: 70px">Thêm học viên</a>
						</div>
						<div class="col-lg-6 col-sm-6 col-xs-6">
							<a href="list-student.html" type="button"
								class="btn btn-block btn-primary btn-lg"
								style="width: 70%; height: 70px">Danh sách học viên</a>
						</div>
					</div>
					<div class="row mb-5 -bottom-3">
						<div class="col-lg-6 col-sm-6 col-xs-6">
							<a href="edit-student.html" type="button"
								class="btn btn-block btn-primary btn-lg"
								style="width: 70%; height: 70px">Chỉnh sửa học viên</a>
						</div>
						<div class="col-lg-6 col-sm-6 col-xs-6">
							<a href="infor-student.html" type="button"
								class="btn btn-block btn-primary btn-lg"
								style="width: 70%; height: 70px">Thông tin học viên</a>
						</div>
					</div>
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
