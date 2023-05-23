<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Lập danh sách môn cho kì học - Quản Lý Sinh Viên Mật Mã</title>
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
            <div class="bg-light rounded h-50 pt-4 pb-4">
                <div class="row g-4">
                    <h3>Lập danh sách môn cho kì học</h3>
                </div>
            </div>
        </div>
        <div class="container-fluid pt-4">
            <div class="bg-light rounded h-50 p-4">
                <form action="/api/data" id="form1">
                    <div class="row">
                        <div class="col-lg-3 col-sm-3 col-xs-3">
                            <div class="form-group mb-3">
                                <label for="affiliate" class="form-label">Khoá</label>
                                <select class="form-select" id="affiliate" form="form-input">
                                    <option value="0">Chọn</option>
                                    <option value="h33">H33</option>
                                    <option value="h34">H34</option>
                                    <option value="h35">H35</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-3 col-xs-3">
                            <div class="form-group mb-3">
                                <label for="affiliate" class="form-label">Khoa</label>
                                <select class="form-select" id="affiliate" form="form-input">
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
                                <label for="affiliate" class="form-label">Ngành</label>
                                <select class="form-select" id="affiliate" form="form-input">
                                    <option value="0">Tất cả</option>
                                    <option value="KNATM">Kỹ nghệ an toàn mạng</option>
                                    <option value="2">An toàn ứng dụng</option>
                                    <option value="2">Công nghệ phần mềm an toàn </option>
                                    <option value="3">Kỹ thuật phần mềm nhúng và di động</option>
                                    <option value="3">Hệ thống nhúng và điều khiển tự động</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-3 col-xs-3">
                            <div class="form-group mb-3">
                                <label for="affiliate" class="form-label">Học kỳ</label>
                                <select class="form-select" id="affiliate" form="form-input">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </form>

                <div class="row g-4">
                    <div class="col-3 border mt-3 pt-3">
                        <h6 class="text-center">Lọc theo khoa</h6>
                        <div id="department"></div>
                    </div>
                    <div class="col-4 border mt-3 pt-3">
                        <h6 class="text-center">Chọn môn học</h6>
                        <div id="subject"></div>
                    </div>
                    <div class="col-1 border mt-3 pt-3 d-inline-flex p-2 flex-column justify-content-around">
                        <button class="btn btn-primary" onclick="handleShow1Object()">
                            <i class="fas fa-angle-right"></i>
                        </button>
                        <button class="btn btn-primary" onclick="handleShowManyObject()"><i
                                class="fas fa-angle-double-right"></i></button>
                    </div>
                    <div class="col-4 border mt-3 pt-3">
                        <h6 class="text-center">Môn được chọn trong kỳ</h6>
                        <form action="/api/tkb" id="form2">
                            <div id="selected"></div>
                        </form>
                    </div>
                </div>
                <button class="btn btn-primary mt-3 " onclick="submitForms()">Thêm lịch học</button>
            </div>
        </div>
        <!-- Section End -->


        <!-- Footer Start -->
        <div class="container-fluid pt-4 px-4">
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