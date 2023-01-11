<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vie">

<head>
    <meta charset="utf-8">
    <title>HaChaMilk - Website mua sữa bột hàng đầu Việt Nam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="OneDrive/Desktop/ltw/Nhom36_powderMilk_Ecommerce/src/main/webapp/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap"
          rel="stylesheet">
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"/>

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <!--    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">-->

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="lib/owlcarousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/carouselCustom.css">


    <!--    <link rel="stylesheet" href="css/owl.carousel.min.css">-->


</head>

<body>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status"></div>
</div>
<!-- Spinner End -->


<!-- Navbar Start -->
<jsp:include page="viewDefault/header.jsp"></jsp:include>
<!-- Navbar End -->


<jsp:include page="viewDefault/sidebar.jsp"></jsp:include>
<!--sidebar end-->


<!-- Categories Section Begin -->
<div class="container text-center my-3">
    <div class="row mx-auto my-auto justify-content-center">
        <div id="recipeCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <c:forEach items="${sliders}" var="slider">
                    <div class="carousel-item ">
                        <div class="col-md-3">
                            <div class="card">
                                <div class="card-img">
                                    <a href="${slider.getLink()}">
                                        <img href="" src="${slider.getImage()}" class="img-fluid"
                                             style="width: 300px;height: auto;object-fit: cover">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>
            </div>
            <a class="carousel-control-prev bg-transparent w-aut" href="#recipeCarousel" role="button"
               data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next bg-transparent w-aut" href="#recipeCarousel" role="button"
               data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>
    </div>
</div>
<!-- Categories Section End -->


<!-- Product Start -->
<div id="product-list" class="container-xxl py-5">
    <div class="container">

        <div class="row g-0 gx-5 align-items-end">
            <div class="col-lg-6">
                <div class="section-header text-start mb-5 wow fadeInUp" data-wow-delay="0.1s"
                     style="max-width: 500px;">
                    <h1 class="display-5 mb-3">Our Products</h1>
                    <p>All my new products.</p>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <c:forEach var="item" items="${map}">
                <div class="tab-pane fade show p-0 active">
                    <div class="row g-4" href="/">
                        <c:forEach var="p" items="${item.getValue()}">
                            <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="product-item">
                                    <div class="position-relative bg-light overflow-hidden">
                                        <img class="img-fluid w-100" src="${p.getImgDisplay()}" alt="">
                                        <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                            <c:if test="${p.getActive()==1}">
                                                New
                                            </c:if>
                                            <c:if test="${p.getActive()==2}">
                                                selling
                                            </c:if>
                                            <c:if test="${p.getActive()==3}">
                                                Sale off
                                            </c:if>
                                            <c:if test="${p.getActive()==4}">
                                                out of stock
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="text-center p-4">
                                        <a class="d-block h5 mb-2" href="product?id=${p.getId()}">${p.getName()}</a>
                                        <span class="text-primary me-1">${p.getPrice()}</span>
                                        <span class="text-body text-decoration-line-through">${p.getPrice()}</span><br>
                                        <span class="text-primary me-1">${p.getWeightAmount()}</span>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="w-50 text-center border-end py-2">

                                            <a class="text-body" href="product?id=${p.getId()}"><i
                                                    class="fa fa-eye text-primary me-2"></i>View
                                                detail</a>
                                        </small>
                                        <small class="w-50 text-center py-2">
                                            <c:if test="${p.getActive()==1||p.getActive()==2||p.getActive()==3}">
                                            <button class="text-body" href=""
                                                    onclick="addToCart(${userSession.getId() and p.getId()and 1})">
                                                    <i   class="fa fa-shopping-bag text-primary me-2"></i>Add
                                                to cart
                                            </button>
                                            </c:if>
                                            <c:if test="${p.getActive()==4}">
                                                <button class="text-body disabled " >
                                                    <i class="fa fa-shopping-bag text-primary  disabled "></i>Add
                                                    to cart</button>
                                            </c:if>

                                        </small>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More Products</a>
            </div>

        </div>
    </div>
</div>
<!-- Product End -->


<!-- Feature Start -->
<div class="container-fluid bg-light bg-icon my-5 py-6">
    <div class="container">
        <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s"
             style="max-width: 500px;">
            <h1 class="display-5 mb-3">Our Features</h1>
            <!--            <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>-->
        </div>
        <div class="row g-4">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="bg-white text-center h-100 p-4 p-xl-5">
                    <img class="img-fluid mb-4" src="img/icon/icon-1.png" alt="">
                    <h4 class="mb-3">Natural Process</h4>
                    <!--                    <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero-->
                    <!--                        dolor duo.</p>-->
                    <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="bg-white text-center h-100 p-4 p-xl-5">
                    <img class="img-fluid mb-4" src="img/icon/icon-2.png" alt="">
                    <h4 class="mb-3">Organic Products</h4>
                    <!--                    <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero-->
                    <!--                        dolor duo.</p>-->
                    <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="bg-white text-center h-100 p-4 p-xl-5">
                    <img class="img-fluid mb-4" src="img/icon/icon-3.png" alt="">
                    <h4 class="mb-3">Biologically Safe</h4>
                    <!--                    <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero-->
                    <!--                        dolor duo.</p>-->
                    <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Feature End -->


<!--     Footer slogan start-->
<div class="container">
    <div class="slogan_footer row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
                <div class="item_slogan text-center">
                    <div><img src="img/graphics/icon_footer_1.svg" class="loading" data-was-processed="true"></div>
                    <div class="txt_slogan"><br>Cash On Delivery</div>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
                <div class="item_slogan text-center">
                    <div><img src="img/graphics/icon_footer_3.svg" class="loading" data-was-processed="true"></div>
                    <div class="txt_slogan"><br>Free Refunds <br> and exchanges 14 days</div>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
                <div class="item_slogan text-center">
                    <div><img src="img/graphics/icon_footer_4.svg" class="loading" data-was-processed="true"></div>
                    <div class="txt_slogan"><br>Global<br> Reputable brand</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--     Footer slogan end-->


<!-- Firm Visit Start -->
<div class="container-fluid bg-primary bg-icon mt-5 py-6">
    <div class="container">
        <div class="row g-5 align-items-center">
            <div class="col-md-7 wow fadeIn" data-wow-delay="0.1s">
                <h1 class="display-5 text-white mb-3">About Us</h1>
                <p class="text-white mb-0">This website is an e-commercial website about power milk. We want to
                    provide
                    our good products for you guys.
                    Would you like to know more information? Click on the next button!</p>
            </div>
            <div class="col-md-5 text-md-end wow fadeIn" data-wow-delay="0.5s">
                <a class="btn btn-lg btn-secondary rounded-pill py-3 px-5" href="about-us.jsp">Click here</a>
            </div>
        </div>
    </div>
</div>
<!-- Firm Visit End -->

<!-- Blog Start -->
<div class="container-xxl py-6">
    <div class="container">
        <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
            <h1 class="display-5 mb-3">Latest Blog</h1>
            <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
        </div>
        <div class="row g-4">
            <c:forEach items="${blogs}" var="blog">
               <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="${blog.getImage()}" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">${blog.getTitle()}</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>${blog.getAdminName()}</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>${blog.getCreateAt()}</small>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<!-- Blog End -->

<%--footer start--%>
<jsp:include page="viewDefault/footer.jsp"></jsp:include>
<%--footer end--%>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
        class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>

<script src="js/bootstrap.bundle.min.js"></script>
<!--<script src="js/owl.carousel.min.js"></script>-->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="../powderMilk_Ecommerce_admin/product-admin-master/js/index.js"></script>
<!-- Template Javascript -->
<script src="js/main.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--<script src="lib/owlcarousel/owl.carousel.min.js"></script>-->
<script src="js/carouselCustom.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/cart.js"></script>
<script>
    $(document).ready(function () {
        getCart(${userSession.getId()});
    });
</script>
</body>
</html>