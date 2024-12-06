<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<dec:head />

<body>
  <dec:body />

  <div class="container mt-4">
    <h2 class="text-center">Trang chủ</h2>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide1.jpg"
            alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide2.jpg"
            alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide3.jpg"
            alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide4.jpg"
            alt="Fourth slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide5.jpg"
            alt="Fifth slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/images/slide6.jpg"
            alt="Sixth slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <div class="mt-4">
      <h2>Khuyến mãi</h2>
      <div class="row">
        <c:forEach items="${products}" var="product">
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/${product.image}"
                alt="${product.name}">
              <div class="card-body">
                <p class="card-text">${product.name}</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <a href="${pageContext.request.contextPath}/product/${product.id}"
                      class="btn btn-sm btn-outline-secondary">Xem chi tiết</a>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Thêm vào giỏ</button>
                  </div>
                  <small class="text-muted">${product.price} VND</small>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </div>

  <dec:footer />
</body>

</html>