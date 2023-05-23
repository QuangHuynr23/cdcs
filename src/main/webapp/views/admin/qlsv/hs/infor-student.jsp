<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="utf-8" />
<title>Thông tin Sinh Viên - Quản Lý Sinh Viên Mật Mã</title>
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
						<h3>Thông tin Sinh Viên</h3>
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
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="info-tab" data-bs-toggle="tab"
								data-bs-target="#info" type="button" role="tab"
								aria-controls="info" aria-selected="false">Thông Tin
								Quân Nhân</button>
						</li>
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
							<div class="row g-4">
								<div class="col-sm-3">
									<img src="http://via.placeholder.com/300x400" width="120px"
										alt="avatar">
								</div>
								<div class="col-sm-9">
									<div class="row g-4 mb-3">
										<div class="col-sm-4">
											Họ và tên: <strong>Nguyễn Quang Huy</strong>
										</div>
										<div class="col-sm-4">
											Mã học viên: <strong>AT170228</strong>
										</div>
										<div class="col-sm-4">
											Ngày sinh: <strong>23/11/2002</strong>
										</div>
									</div>
									<div class="row g-4 mb-3">
										<div class="col-sm-4">
											Giới tính: <strong>Nam</strong>
										</div>
										<div class="col-sm-4">
											Chức vụ học viên: <strong>Lớp trưởng</strong>
										</div>
										<div class="col-sm-4">
											Học kỳ nhập học: <strong>2019 - 2020 </strong>
										</div>
									</div>
									<div class="row g-4 mb-3">
										<div class="col-sm-4">
											CCCD/CMND <strong>026201898382</strong>
										</div>
										<div class="col-sm-4">
											Ngày cấp: <strong>05/05/2021</strong>
										</div>
										<div class="col-sm-4">
											Nơi cấp: <strong>Cục Cảnh sát</strong>
										</div>
									</div>
									<div class="row g-4 mb-3">
										<div class="col-sm-6">
											STK: <strong>9500101315830</strong>
										</div>
										<div class="col-sm-6">
											Ngân hàng: <strong>MBBank</strong>
										</div>
									</div>
									<div>
										Địa chỉ: <strong>Số nhà 54, 44/54/16 đường Hoàng Quốc
											Việt, phường Nghĩa Tân, quận Cầu Giấy, thành phố Hà Nội</strong>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="household" role="tabpanel"
							aria-labelledby="household-tab">
							<h5 class="text-center mb-3">Hộ Khẩu</h5>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Tỉnh: <strong>Nghệ An</strong>
								</div>
								<div class="col-sm-4">
									Phường/Huyện: <strong>Lê Lợi</strong>
								</div>
								<div class="col-sm-4">
									Xã: <strong></strong>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="object" role="tabpanel"
							aria-labelledby="object-tab">
							<h5 class="text-center mb-3">Đối Tượng</h5>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Quốc tịch: <strong>Việt Nam</strong>
								</div>
								<div class="col-sm-4">
									Dân tộc: <strong>Kinh</strong>
								</div>
								<div class="col-sm-4">
									Tôn giáo: <strong>Không</strong>
								</div>
							</div>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Thành phần gia đình: <strong>Công chức</strong>
								</div>
								<div class="col-sm-4">
									Đối tượng đào tạo: <strong>Đại học </strong>
								</div>
								<div class="col-sm-4">
									Đơn vị liên kết: <strong>Không</strong>
								</div>
							</div>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Trúng tuyển theo nguyện vọng: <strong>1</strong>
								</div>
								<div class="col-sm-4">
									Năm tốt nghiệp THPT: <strong>2020</strong>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="contact" role="tabpanel"
							aria-labelledby="contact-tab">
							<h5 class="text-center mb-3">Liên Lạc</h5>
							<div>
								Email: <strong>vhp@test.com.vn</strong>
							</div>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Điện thoại: <strong>0123456788</strong>
								</div>
								<div class="col-sm-4">
									Điện thoại gia đình: <strong>0987654322</strong>
								</div>
								<div class="col-sm-4">
									Điện thoại cơ quan <strong>0986283618</strong>
								</div>
							</div>
							<div class="row g-4 mb-3">
								<div class="col-sm-4">
									Báo tin cho <strong>Ông: Nguyễn Văn A </strong>
								</div>
								<div class="col-sm-8">
									Địa chỉ: <strong>đường Hoàng Quốc Việt, phường Nghĩa
										Tân, thành phố Hà Nội</strong>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="orther" role="tabpanel"
							aria-labelledby="orther-tab">
							<h5 class="text-center mb-3">Khác</h5>
							<div class="row g-4 mb-3">
								<div class="col-sm-6">
									Ngày vào Đoàn: <strong>dd/mm/yyyy</strong>
								</div>
								<div class="col-sm-6">
									Ngày vào Đảng: <strong>dd/mm/yyyy</strong>
								</div>
							</div>
							<div class="row g-4 mb-3">
								<div class="col-sm-6">
									Ngày vào trường: <strong>dd/mm/yyyy</strong>
								</div>
								<div class="col-sm-6">
									Ngày ra trường: <strong>dd/mm/yyyy</strong>
								</div>
							</div>
							<div class="mb-3">
								Khen thưởng: <strong>Lorem ipsum dolor sit amet
									consectetur adipisicing elit. Placeat impedit, excepturi
									perferendis ex tempora labore voluptate eum odio rerum eaque
									consectetur in autem? Rerum maiores enim sequi autem soluta.
									Architecto!</strong>
							</div>
							<div class="mb-3">
								Kỷ luật: <strong>Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Placeat impedit, excepturi perferendis ex
									tempora labore voluptate eum odio rerum eaque consectetur in
									autem? Rerum maiores enim sequi autem soluta. Architecto!</strong>
							</div>
							<div class="mb-3">
								Ghi chú: <strong>Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Placeat impedit, excepturi perferendis ex
									tempora labore voluptate eum odio rerum eaque consectetur in
									autem? Rerum maiores enim sequi autem soluta. Architecto!</strong>
							</div>
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
</body>
</html>