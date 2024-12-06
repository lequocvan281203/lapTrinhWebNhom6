<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>UTESHOP</title>
  <dec:head />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>

<body>
  <header>
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="UTESHOP Logo">
          <span>SPK SHOPPING</span>
        </div>
        <div class="col-md-6">
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm..." aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
        </div>
        <div class="col-md-3 d-flex align-items-center justify-content-end">
          <a href="${pageContext.request.contextPath}/login" class="mr-3"><i class="fas fa-user"></i></a>
          <a href="${pageContext.request.contextPath}/cart" class="mr-3"><i class="fas fa-shopping-cart"></i></a>
          <a href="${pageContext.request.contextPath}/home" class="mr-3"><i class="fas fa-home"></i></a>
        </div>
      </div>
    </div>
  </header>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/">Trang chủ <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/khuyen-mai">Khuyến mãi</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Liên hệ</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <dec:body />

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <p>&copy; 2023 UTESHOP</p>
        </div>
        <div class="col-md-4">
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
        <div class="col-md-4">
          <a href="#"><i class="fab fa-zalo"></i> Zalo</a>
        </div>
      </div>
    </div>
  </footer>

  <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>

</html>