<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <title>Danh Sách Giảng Viên - Quản Lý Sinh Viên Mật Mã</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

</head>

<body>
    <div class="container-fluid position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
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
                    <h3>Danh Sách Giảng Viên</h3>
                </div>
            </div>
        </div>
        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded p-4">
                <div class="table-responsive table-wrapper-scroll-y my-custom-scrollbar">
                    <table class="table table-hover table-striped mb-0">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Họ và Tên</th>
                                <th scope="col">Mã Giảng Viên</th>
                                <th scope="col">Khoa</th>
                                <th scope="col">Email</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <th scope="row">1</th>
                                <td>Lê Đức Thuận</td>
                                <td>GV_1</td>
                                <td>Công nghệ thông tin</td>
                                <td><a href="mailto:leducthuan255@gmail.com">leducthuan255@gmail.com</a></td>
                                <td>
                                    <a class="btn btn-primary btn-sm" href="<c:url value='/admin/qldt/qld/add-grade'/>">
                                        <i class="bi bi-pencil-square"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-sm"
                                        onclick="removeRow(2,  ' /admin/products/destroy')">
                                        <i class="bi bi-trash-fill"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">1</th>
                                <td>Lê Đức Thuận</td>
                                <td>GV_1</td>
                                <td>Công nghệ thông tin</td>
                                <td><a href="mailto:leducthuan255@gmail.com">leducthuan255@gmail.com</a></td>
                                <td>
                                    <a class="btn btn-primary btn-sm" href="<c:url value='/admin/qldt/qld/add-grade'/>">
                                        <i class="bi bi-pencil-square"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-sm"
                                        onclick="removeRow(2,  ' /admin/products/destroy')">
                                        <i class="bi bi-trash-fill"></i>
                                    </a>
                                </td>
                            </tr>

                        </tbody>
                    </table>
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