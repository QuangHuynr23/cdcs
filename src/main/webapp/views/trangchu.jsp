<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="/common/taglib.jsp"%>
	
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8" />
<title>Quản Lý Sinh Viên Mật Mã</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
</head>
<body>
	<div class="header">
		<div class="logo">
		            <img src="<c:url value='/template/trangchu/images/Logo-Hoc-Vien-Ky-Thuat-Mat-Ma-ACTVN-1.png'/>"  class="logo_kma">

		</div>

		<div class="text">
			<h4 class="header_text">Quản lý sinh viên</h4>
		</div>
		<div class="btn" >
		<a href="<c:url value='/dang-nhap'/>" styleV="text-decoration: none" class="btn_login">Đăng nhập</a>
			<%-- <button class="btn_login" src="<c:url value='/dang-nhap'/>">Đăng nhập</button> --%>
		</div>

	</div>

	<div class="slider">
		<div class="title_text">
			<h4 class="main_text">Trang web quản lý học viên KMA</h4>
		</div>


		<table class="main_table">
			<thead>
				<tr>
					<th>Email</th>
					<th>Passwword</th>
					<th>Role</th>
					<th>Quyền</th>
				</tr>
			</thead>
			<tbody>
				<tr class="row_table">
					<td>admin01@lch.com</td>
					<td>admin01</td>
					<td>Admin</td>
					<td>Tất cả</td>
				</tr>
				<tr>
					<td>student01@lch.com</td>
					<td>student01</td>
					<td>Học viên</td>
					<td>Xem điểm, thêm thông tin của chính mình</td>
				</tr>
				<tr class="row_table">
					<td>teacher01@lch.com</td>
					<td>teacher01</td>
					<td>Giảng viên</td>
					<td>Sửa thông tin của chính mình</td>
				</tr>
				<tr>
					<td>department01@lch.com</td>
					<td>department01</td>
					<td>Khảo thí</td>
					<td>Thêm tất cả điểm</td>
				</tr>
				<tr class="row_table">
					<td>department02@lch.com</td>
					<td>department02</td>
					<td>Hệ QLSV</td>
					<td>Thêm thông tin cho sinh viên</td>
				</tr>
				<tr>
					<td>department03@lch.com</td>
					<td>department03</td>
					<td>Đào tạo</td>
					<td>Lập lịch học<br> quản lý môn học
					</td>
				</tr>

			</tbody>
		</table>
		<div>
			<p class="last_text">
				Khi tạo sinh viên hoặc giảng viên mới thì hệ thống sẽ tạo mới 1 tài
				khoản trong hệ thống với <br>
				<strong>Tên đăng nhập</strong> là <strong>Mã SV/GV</strong>, <strong>Mật
					khẩu</strong> là <strong>123456789.</strong>
			</p>
		</div>

	</div>
</body>
</html>
