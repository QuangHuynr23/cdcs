<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- Favicon -->
    <!-- <link href="../../img/logoico.png" rel="icon" /> -->
	<link href="<c:url value='/template/admin/img/logoico.png'/>" rel="icon" />
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet" />

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/f172ccfa7a.js" crossorigin="anonymous"></script>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <!-- <link href="../../css/bootstrap.min.css" rel="stylesheet" /> -->
    <link href="<c:url value='/template/admin/css/bootstrap.min.css'/>" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <!-- <link href="../../css/style.css" rel="stylesheet" /> -->
    <link href="<c:url value='/template/admin/css/style.css'/>" rel="stylesheet" />
    <dec:head/>
</head>
<body class="no-skin">
	<!-- header -->
    <%@ include file="/common/admin/header.jsp" %>
    <!-- header -->
    
    <!-- sidebar -->
    <%@ include file="/common/admin/sidebar.jsp" %>
    <!-- sidebar -->
    
    <dec:body/>
    
    <!-- footer -->
    <%@ include file="/common/admin/footer.jsp" %>
    <!-- footer -->
    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Template Javascript -->
    <!-- <script src="../../js/main.js"></script> -->
    <script src="<c:url value='/template/admin/js/main.js'/>"></script>
</body>
</html>