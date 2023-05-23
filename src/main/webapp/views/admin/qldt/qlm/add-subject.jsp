<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <title>Thêm Học Phần - Quản Lý Sinh Viên Mật Mã</title>
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
                    <h3>Thêm Học Phần</h3>
                </div>
            </div>
        </div>
        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded h-50 p-4">
                <form action="" id="form">
                    <div class="row g-4">
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label for="name" class="form-label">Tên học phần</label>
                                <input type="text" class="form-control" id="name" name="name" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label for="subject_code" class="form-label">Mã học phần</label>
                                <input type="text" class="form-control" id="subject_code" name="subject_code"
                                    autocomplete="off" />
                            </div>
                        </div>
                    </div>
                    <div class="row g-4">
                        <div class="col-sm-4">
                            <div class="form-group mb-3">
                                <label for="number_of_lesson" class="form-label">Số tín chỉ</label>
                                <input type="number" class="form-control" id="number_of_lesson" name="number_of_lesson"
                                    autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group mb-3">
                                <label for="department_id" class="form-label">Khoa</label>
                                <select class="form-select" id="department_id" form="form-input" name="department_id">
                                    <option value="0">Chọn</option>
                                    <option value="AT">An toàn thông tin</option>
                                    <option value="DT">Điện tử viễn thông</option>
                                    <option value="CT">Công nghệ thông tin</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group mb-3">
                                <label for="semester" class="form-label">Kỳ học</label>
                                <select class="form-select" id="semester" form="form-input" name="semester">
                                    <option value="0">Chọn</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </form>
                <button type="submit" form="form" class="btn btn-primary">Thêm Học Phần</button>
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
                        <a href="#">
                            <i class="bi bi-github"></i>
                        </a>
                        <a href="#">
                            <i class="bi bi-facebook"></i>
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