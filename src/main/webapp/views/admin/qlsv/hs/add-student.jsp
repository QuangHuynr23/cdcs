<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8" />
<title>Thêm Sinh Viên - Quản Lý Sinh Viên Mật Mã</title>
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
						<h3>Thêm Sinh Viên</h3>
					</div>
				</div>
			</div>
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded h-50 p-4">
					<ul class="nav nav-tabs mb-4" id="input" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="student-tab"
								data-bs-toggle="tab" data-bs-target="#student" type="button"
								role="tab" aria-controls="student" aria-selected="true">
								Học Viên</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="household-tab" data-bs-toggle="tab"
								data-bs-target="#household" type="button" role="tab"
								aria-controls="household" aria-selected="false">Hộ Khẩu
							</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="object-tab" data-bs-toggle="tab"
								data-bs-target="#object" type="button" role="tab"
								aria-controls="object" aria-selected="false">Đối Tượng
							</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
								data-bs-target="#contact" type="button" role="tab"
								aria-controls="contact" aria-selected="false">Liên Lạc
							</button>
						</li>
						<!-- <li class="nav-item" role="presentation">
							<button class="nav-link" id="info-tab" data-bs-toggle="tab"
								data-bs-target="#info" type="button" role="tab"
								aria-controls="info" aria-selected="false">Thông Tin
								Quân Nhân</button>
						</li> -->
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="orther-tab" data-bs-toggle="tab"
								data-bs-target="#orther" type="button" role="tab"
								aria-controls="orther" aria-selected="false">Khác</button>
						</li>
					</ul>
					<div class="tab-content" id="input">
						<div class="tab-pane fade show active" id="student"
							role="tabpanel" aria-labelledby="student-tab">
							<h5 class="text-center mb-3">Học Viên</h5>
							<form id="form-input">
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
											<label for="code" class="form-label">Mã Sinh Viên</label> <input
												type="text" class="form-control" id="code" name="code"
												autocomplete="off" />
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group mb-3">
											<label for="gender">Giới Tính</label>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="gender"
													id="gender" value="1" checked="" /> <label
													class="form-check-label" for="gender"> Nam </label>
											</div>
											<div class="form-check">
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
											<label for="bank_id" class="form-label">Số tài khoản</label>
											<input type="text" class="form-control" id="bank_id"
												name="bank_id" autocomplete="off" />
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group mb-3">
											<label for="bank" class="form-label">Ngân hàng</label> <select
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
								<div class="row g-4">
									<div class="col-sm-6">
										<div class="form-group mb-3">
											<label for="position" class="form-label">Chức vụ học
												viên</label> <select class="form-select" id="position">
												<option value="0">Chọn</option>
												<option value="1">Chức vụ 1</option>
												<option value="2">Chức vụ 2</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group mb-3">
											<label for="school_year_id" class="form-label">Học kỳ
												nhập học</label> <input type="text" class="form-control"
												id="school_year_id" name="school_year_id" autocomplete="off" />
										</div>
									</div>
								</div>
								<div class="row g-4">
									<div class="col-sm-4">
										<div class="form-group mb-3">
											<label for="identify_id" class="form-label">CCCD/CMND</label>
											<input type="text" class="form-control" id="identify_id"
												name="identify_id" autocomplete="off" />
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group mb-3">
											<label for="identify_date" class="form-label">Ngày
												cấp</label> <input type="text" class="form-control"
												id="identify_date" name="identify_date" autocomplete="off" />
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group mb-3">
											<label for="identify_address" class="form-label">Nơi
												cấp</label> <input type="text" class="form-control"
												id="identify_address" name="identify_address"
												autocomplete="off" />
										</div>
									</div>
								</div>
								<div class="form-group mb-3">
									<label for="birthday" class="form-label">Ngày sinh</label> <input
										type="text" class="form-control" id="birthday" name="birthday"
										autocomplete="off" />
								</div>
								<div class="form-group mb-3">
									<label for="address" class="form-label">Địa chỉ</label> <input
										type="text" class="form-control" id="address" name="address"
										autocomplete="off" />
								</div>
							</form>
						</div>
						<div class="tab-pane fade" id="household" role="tabpanel"
							aria-labelledby="household-tab">
							<h5 class="text-center mb-3">Hộ Khẩu</h5>

							<div class="form-group mb-3">
								<label for="address_province" class="form-label">Tỉnh/
									Thành Phố</label> <input type="text" class="form-control"
									id="address_province" name="address_province"
									autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="address_distric" class="form-label">Quận/
									Huyện</label> <input type="text" class="form-control"
									id="address_distric" name="address_distric" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="address_wards" class="form-label">Xã/ Phường</label>
								<input type="text" class="form-control" id="address_wards"
									name="address_wards" autocomplete="off" form="form-input" />
							</div>
						</div>
						<div class="tab-pane fade" id="object" role="tabpanel"
							aria-labelledby="object-tab">
							<h5 class="text-center mb-3">Đối Tượng</h5>
							<div class="row g-4">
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="ethnic" class="form-label">Dân tộc</label> <select
											class="form-select" id="ethnic" form="form-input">
											<option value="0">Chọn</option>
											<option value="1">Kinh</option>
											<option value="2">Mường</option>
											<option value="3">Thái</option>
											<option value="4">Dao</option>
											<option value="5">Nùng</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="religion" class="form-label">Tôn giáo</label> <select
											class="form-select" id="religion" form="form-input">
											<option value="0">Chọn</option>
											<option value="1">Không</option>
											<option value="2">Phật giáo</option>
											<option value="3">Thiên chúa giáo</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group mb-3">
								<label for="nation" class="form-label">Quốc tịch</label> <select
									class="form-select" id="nation" form="form-input">
									<option value="0">Chọn</option>
									<option value="1">Việt Nam</option>
									<option value="2">Lào</option>
									<option value="3">Campuchia</option>
								</select>
							</div>
							<div class="form-group mb-3">
								<label for="wish" class="form-label">Trúng tuyển theo
									nguyện vọng</label> <input type="text" class="form-control" id="wish"
									name="wish" autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="graduation_year" class="form-label">Năm tốt
									nghiệp THPT</label> <input type="text" class="form-control"
									id="graduation_year" name="graduation_year" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="family" class="form-label">Thành phần gia
									đình</label> <select class="form-select" id="family" form="form-input">
									<option value="0">Chọn</option>
									<option value="1">Viên chức</option>
									<option value="2">Nông dân</option>
									<option value="3">Tiểu thương</option>
								</select>
							</div>
							<div class="row g-4">
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="training_object" class="form-label">Đối
											tượng đào tạo</label> <select class="form-select"
											id="training_object" form="form-input">
											<option value="0">Chọn</option>
											<option value="1">Đối tượng đào tạo 1</option>
											<option value="2">Đối tượng đào tạo 2</option>
											<option value="3">Đối tượng đào tạo 3</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="affiliate" class="form-label">Đơn vị liên
											kết</label> <select class="form-select" id="affiliate"
											form="form-input">
											<option value="0">Chọn</option>
											<option value="1">Đơn vị liên kết 1</option>
											<option value="2">Đơn vị liên kết 2</option>
											<option value="3">Đơn vị liên kết 3</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="contact" role="tabpanel"
							aria-labelledby="contact-tab">
							<h5 class="text-center mb-3">Liên Lạc</h5>
							<div class="form-group mb-3">
								<label for="person_phone" class="form-label">Điện thoại</label>
								<input type="text" class="form-control" id="person_phone"
									name="person_phone" autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="family_phone" class="form-label">Điện thoại
									gia đình</label> <input type="text" class="form-control"
									id="family_phone" name="family_phone" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="office_phone" class="form-label">Điện thoại
									cơ quan</label> <input type="text" class="form-control"
									id="office_phone" name="office_phone" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" id="email" name="email"
									autocomplete="off" form="form-input" />
							</div>
							<div class="row g-4">
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="news_to" class="form-label">Báo tin cho</label> <input
											type="text" class="form-control" id="news_to" name="news_to"
											autocomplete="off" form="form-input" />
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group mb-3">
										<label for="news_to_address" class="form-label">ở đâu</label>
										<input type="text" class="form-control" id="news_to_address"
											name="news_to_address" autocomplete="off" form="form-input" />
									</div>
								</div>
							</div>
							<div class="form-group mb-3">
								<label for="address_infor">Thông tin nơi ở</label>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="address_infor" id="address_infor_in" value="1"
										checked="" form="form-input" /> <label
										class="form-check-label" for="address_infor_in"> Nội
										trú </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="address_infor" id="address_infor_out" value="0"
										form="form-input" /> <label class="form-check-label"
										for="gender"> Ngoại trú </label>
									<div class="form-group mb-3">
										<input type="text" class="form-control" id="address_infor_out"
											name="address_infor_out" autocomplete="off" form="form-input" />
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="orther" role="tabpanel"
							aria-labelledby="orther-tab">
							<h5 class="text-center mb-3">Khác</h5>
							<div class="form-group mb-3">
								<label for="join_date_union" class="form-label">Ngày vào
									Đoàn</label> <input type="text" class="form-control"
									id="join_date_union" name="join_date_union" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="join_date_party" class="form-label">Ngày vào
									Đảng</label> <input type="text" class="form-control"
									id="join_date_party" name="join_date_party" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="entry_date" class="form-label">Ngày vào
									trường</label> <input type="text" class="form-control" id="entry_date"
									name="entry_date" autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="graduation_date" class="form-label">Ngày ra
									trường</label> <input type="text" class="form-control"
									id="graduation_date" name="graduation_date" autocomplete="off"
									form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="job" class="form-label">Nghề/ Chức vụ</label> <input
									type="text" class="form-control" id="job" name="job"
									autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="laudatory" class="form-label">Khen thưởng</label> <input
									type="text" class="form-control" id="laudatory"
									name="laudatory" autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="discipline" class="form-label">Kỷ luật</label> <input
									type="text" class="form-control" id="discipline"
									name="discipline" autocomplete="off" form="form-input" />
							</div>
							<div class="form-group mb-3">
								<label for="note" class="form-label">Ghi chú</label> <input
									type="text" class="form-control" id="note" name="note"
									autocomplete="off" form="form-input" />
							</div>
						</div>
						<button type="submit" class="btn btn-primary" form="form-input">Thêm
							Sinh Viên</button>
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

