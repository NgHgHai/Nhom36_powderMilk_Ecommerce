<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" tagdir=""%>
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
<div class="container-fluid fixed-top px-0 wow fadeIn" data-wow-delay="0.1s">
    <div class="top-bar row gx-0 align-items-center d-none d-lg-flex">
        <div class="col-lg-6 px-5 text-start">
            <small><i class="fa fa-map-marker-alt me-2"></i>123 Street, New York, USA</small>
            <small class="ms-4"><i class="fa fa-envelope me-2"></i>info@example.com</small>
        </div>
        <div class="col-lg-6 px-5 text-end">
            <small>Follow us:</small>
            <a class="text-body ms-3" href=""><i class="fab fa-facebook-f"></i></a>
            <a class="text-body ms-3" href=""><i class="fab fa-twitter"></i></a>
            <a class="text-body ms-3" href=""><i class="fab fa-linkedin-in"></i></a>
            <a class="text-body ms-3" href=""><i class="fab fa-instagram"></i></a>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
        <!--       Start  left Menu Size-->
        <button class="btn float-start" data-bs-toggle="offcanvas" data-bs-target="#offcanvas-start" role="button">
            <i class="bi bi-list fs-3" data-bs-toggle="offcanvas" data-bs-target="#offcanvas-start"></i>
        </button>
        <div class="offcanvas offcanvas-start w-25" tabindex="-1" id="offcanvas-start" data-bs-keyboard="false"
             data-bs-backdrop="false">
            <div class="offcanvas-header">
                <h6 class="offcanvas-title d-none d-sm-block">Menu</h6>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
            </div>
            <div class="offcanvas-body px-0">
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-start" id="menu">
                    <li class="nav-item">
                        <a href="#" class="nav-link text-truncate">
                            <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="about.html" class="nav-link text-truncate">
                            <span class="ms-1 d-none d-sm-inline">About Us</span> </a>
                    </li>
                    <li>
                        <a href="product/product.html" class="nav-link text-truncate">
                            <span class="ms-1 d-none d-sm-inline">Products</span></a>
                    </li>
                    <li>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><span
                                    class="ms-1 d-none d-sm-inline">Pages</span></a>
                            <div class="dropdown-menu m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="feature.html" class="dropdown-item">Our Features</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="404.html" class="dropdown-item">404 Page</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="contact.html" class="nav-link text-truncate">
                            <span class="ms-1 d-none d-sm-inline">Contact US</span></a>
                    </li>

                </ul>
            </div>
        </div>
        <!--       End  left Menu Size-->
        <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
            <h1 class="fw-bold text-primary m-0">Ha<span class="text-secondary">Cha</span>Milk</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link active">Home</a>
                <a href="about.html" class="nav-item nav-link">About Us</a>
                <a href="product.html" class="nav-item nav-link">Products</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="blog.html" class="dropdown-item">Blog Grid</a>
                        <a href="feature.html" class="dropdown-item">Our Features</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact Us</a>
            </div>
            <div class="d-none d-lg-flex ms-2 ">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn " type="submit"><small class="fa fa-search text-body"></small></button>
                </form>

                <div class="nav-item dropdown">
                    <a class="btn-sm-square bg-white rounded-circle ms-3 nav-link " href="customer.html"
                       data-bs-toggle="dropdown">
                        <small class="fa fa-user text-body"></small></a>
                    <div class="dropdown-menu m-0">
                        <a href="register.html" class="dropdown-item">Account</a>
                        <a href="customer.html" class="dropdown-item">Order Management</a>
                        <a href="receiveAddress.html" class="dropdown-item">Your Address</a>
                        <a href="#" class="dropdown-item">Log out</a>
                    </div>
                </div>
                <!--                start   right size-->
                <button class="btn-sm-square bg-white rounded-circle ms-3" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvas-end" role="button">
                    <small class="fa fa-shopping-bag text-body"></small>
                    <span class="counter_number counter qty">4</span>
                </button>
                <div class="offcanvas offcanvas-end w-25" tabindex="-1" id="offcanvas-end" data-bs-keyboard="false"
                     data-bs-backdrop="false">
                    <div class="offcanvas-header">
                        <h6 class="offcanvas-title d-none d-sm-block">Recently added products</h6>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body px-0 ">
                        <ul class="list-group flex-column mb-sm-auto mb-0 align-items-start">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center">
                                    <img src="img/prenant/product-1.jpg" alt="">
                                    <p class="fw-bold mb-1 p-3">Sữa Mom </p>
                                    <p class="text-secondary mb-1 p-3 "> 560000 </p>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="d-flex align-items-center">
                                    <img src="img/prenant/product-1.jpg" alt="">
                                    <p class="fw-bold mb-1 p-3">Sữa Mom </p>
                                    <p class="text-secondary mb-1 p-3 "> 560000 </p>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="d-flex align-items-center">
                                    <img src="img/prenant/product-1.jpg" alt="">
                                    <p class="fw-bold mb-1 p-3">Sữa Mom </p>
                                    <p class="text-secondary mb-1 p-3 "> 560000 </p>
                                </div>
                            </li>
                        </ul>
                        <a class="btn btn-primary rounded-3 " href="shoppingcart.html" role="button">view my shopping
                            cart</a>
                    </div>
                </div>

                <!--                end right size-->
            </div>
        </div>
    </nav>
</div>
<!-- Navbar End -->


<div class="container-fluid sidebar-categories">
    <div class="row">
        <div class="col-lg-3">
            <div class="hero__categories">
                <div class="hero__categories__all">
                    <i class="fa fa-bars"></i>
                    <span>All departments</span>

                </div>
                <ul>
                    <li><h4>Mom and Kids</h4></li>
                    <li><a href="#">Fresh Meat</a></li>
                    <li><a href="#">Vegetables</a></li>
                    <li><a href="#">Fruit & Nut Gifts</a></li>
                    <li><a href="#">Fresh Berries</a></li>
                    <li><a href="#">Ocean Foods</a></li>
                    <li><h4>Adults</h4></li>
                    <li><a href="#">Butter & Eggs</a></li>
                    <li><a href="#">Fastfood</a></li>
                    <li><a href="#">Fresh Onion</a></li>
                    <li><a href="#">Papayaya & Crisps</a></li>
                    <li><a href="#">Oatmeal</a></li>
                </ul>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="hero__item set-bg" >
                <div class="hero__text">
                    <span>Good Milk_ Good Life</span>
                    <h2>PowderMilk Gold quality</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!--sidebar end-->


<!-- Categories Section Begin -->
<div class="container text-center my-3">
    <div class="row mx-auto my-auto justify-content-center">
        <div id="recipeCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="img/product-2.jpg" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 1</div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="//via.placeholder.com/500x400/e66?text=2" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 2</div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="//via.placeholder.com/500x400/7d2?text=3" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 3</div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="//via.placeholder.com/500x400?text=4" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 4</div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="//via.placeholder.com/500x400/aba?text=5" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 5</div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-img">
                                <img src="//via.placeholder.com/500x400/fc0?text=6" class="img-fluid">
                            </div>
                            <div class="card-img-overlay">Slide 6</div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev bg-transparent w-aut" href="#recipeCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next bg-transparent w-aut" href="#recipeCarousel" role="button" data-bs-slide="next">
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
            <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                    <li class="nav-item me-2">
                        <a class="btn btn-outline-primary border-2 active" data-bs-toggle="pill"
                           href="#tab-1">New</a>
                    </li>
                    <li class="nav-item me-2">
                        <a class="btn btn-outline-primary border-2" data-bs-toggle="pill" href="#tab-2">Hot</a>
                    </li>
                    <li class="nav-item me-0">
                        <a class="btn btn-outline-primary border-2" data-bs-toggle="pill" href="#tab-3">Sale</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-content">
            <div id="tab-1" class="tab-pane fade show p-0 active">
                <div class="row g-4">
                    <c:forEach var="p" items="${item.getValue()}">
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="${p.imgDisplay}" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="product">Sữa bột XO I am Mother Mom</a>
                                <span class="text-primary me-1">300.000VND</span>
                                <span class="text-body text-decoration-line-through">400.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                        </c:forEach>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-2.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột XO Mom</a>
                                <span class="text-primary me-1">216.000VND</span>
                                <span class="text-body text-decoration-line-through">266.00VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-3.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Abbott Similac Mom IQ</a>
                                <span class="text-primary me-1">150.000VND</span>
                                <span class="text-body text-decoration-line-through">200.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-4.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Dumex Mama Gold</a>
                                <span class="text-primary me-1">340.000VND</span>
                                <span class="text-body text-decoration-line-through">400.000VND</span><br>
                                <span class="text-primary me-1">800gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-5.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Abbott Similac Mom IQ</a>
                                <span class="text-primary me-1">395.000VND</span>
                                <span class="text-body text-decoration-line-through">430.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-6.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Dutch Lady Cô gái Hà Lan Mum</a>
                                <span class="text-primary me-1">93.000VND</span>
                                <span class="text-body text-decoration-line-through">140.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-7.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Dutch Lady Cô gái Hà Lan Mum</a>
                                <span class="text-primary me-1">178.000VND</span>
                                <span class="text-body text-decoration-line-through">240.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/prenant/product-8.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột Dielac Mama</a>
                                <span class="text-primary me-1">200.000VND</span>
                                <span class="text-body text-decoration-line-through">250.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                        <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More Products</a>
                    </div>
                </div>
            </div>
            <div id="tab-2" class="tab-pane fade show p-0">
                <div class="row g-4">
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-1.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Morinaga số 1(Hagukumi, 0-6 tháng)</a>
                                <span class="text-primary me-1">539.000VND</span>
                                <span class="text-body text-decoration-line-through">590.000</span><br>
                                <span class="text-primary me-1">850gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-2.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Similac 5G số 1(0-6 tháng)</a>
                                <span class="text-primary me-1">269.000VND</span>
                                <span class="text-body text-decoration-line-through">300.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-3.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Blackmores Số 1(0-6 tháng)</a>
                                <span class="text-primary me-1">525.000VND</span>
                                <span class="text-body text-decoration-line-through">550.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-4.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Nutramigen A+LGG(0-6 tháng)</a>
                                <span class="text-primary me-1">519.000VND</span>
                                <span class="text-body text-decoration-line-through">540.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-5.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Glico Icreo số 0(0-6 tháng)</a>
                                <span class="text-primary me-1">539.000VND</span>
                                <span class="text-body text-decoration-line-through">569.000VND</span><br>
                                <span class="text-primary me-1">800gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-6.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Morinaga số 1(Hagukumi, 0-6 tháng)</a>
                                <span class="text-primary me-1">239.000VND</span>
                                <span class="text-body text-decoration-line-through">269.000VND</span><br>
                                <span class="text-primary me-1">320gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-7.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Abbott Grow 1(0-6 tháng)</a>
                                <span class="text-primary me-1">339.000VND</span>
                                <span class="text-body text-decoration-line-through">379.000VND</span><br>
                                <span class="text-primary me-1">900ggr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics1/product-8.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Humana Gold Plus 1(0-6 tháng)</a>
                                <span class="text-primary me-1">665.00VND</span>
                                <span class="text-body text-decoration-line-through">705.000VND</span><br>
                                <span class="text-primary me-1">800gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 text-center">
                        <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More Products</a>
                    </div>
                </div>
            </div>
            <div id="tab-3" class="tab-pane fade show p-0">
                <div class="row g-4">
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-1.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Similac 5G số 2(6-12 tháng)</a>
                                <span class="text-primary me-1">549.000VND</span>
                                <span class="text-body text-decoration-line-through">579.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-2.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Blackmores Số 2(6-12 tháng)</a>
                                <span class="text-primary me-1">525.000VND</span>
                                <span class="text-body text-decoration-line-through">555.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-3.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Enfamil A+ số 2(6-12 tháng) 2Flex
                                </a>
                                <span class="text-primary me-1">500.000VND</span>
                                <span class="text-body text-decoration-line-through">540.000VND</span><br>
                                <span class="text-primary me-1">830gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-4.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Enfamil A+ số 2 tháng) 2Flex</a>
                                <span class="text-primary me-1">919.000VND</span>
                                <span class="text-body text-decoration-line-through">959.000gr</span><br>
                                <span class="text-primary me-1">1700gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-5.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Enfamil A2 NeuroPro số 2(6 - 12 tháng)</a>
                                <span class="text-primary me-1">699.000VND</span>
                                <span class="text-body text-decoration-line-through">729.000VND</span><br>
                                <span class="text-primary me-1">800gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-6.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Abbott Grow 2 900g (6-12 tháng)</a>
                                <span class="text-primary me-1">339.000VND</span>
                                <span class="text-body text-decoration-line-through">369.000VND</span><br>
                                <span class="text-primary me-1">900gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-7.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa Similac 5G số 2(6-12 tháng)</a>
                                <span class="text-primary me-1">269.000VND</span>
                                <span class="text-body text-decoration-line-through">699.000VND</span><br>
                                <span class="text-primary me-1">400gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="img/graphics2/product-8.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa HiPP Organic Combiotic số 2(6-12 tháng)</a>
                                <span class="text-primary me-1">655.000VND</span>
                                <span class="text-body text-decoration-line-through">685.000VND</span><br>
                                <span class="text-primary me-1">800gr</span>
                            </div>
                            <div class="d-flex border-top">
                                <small class="w-50 text-center border-end py-2">
                                    <a class="text-body" href=""><i class="fa fa-eye text-primary me-2"></i>View detail</a>
                                </small>
                                <small class="w-50 text-center py-2">
                                    <a class="text-body" href=""><i class="fa fa-shopping-bag text-primary me-2"></i>Add
                                        to cart</a>
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 text-center">
                        <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More Products</a>
                    </div>
                </div>
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
                    <img class="img-fluid mb-4" src="img/icon-1.png" alt="">
                    <h4 class="mb-3">Natural Process</h4>
                    <!--                    <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero-->
                    <!--                        dolor duo.</p>-->
                    <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="bg-white text-center h-100 p-4 p-xl-5">
                    <img class="img-fluid mb-4" src="img/icon-2.png" alt="">
                    <h4 class="mb-3">Organic Products</h4>
                    <!--                    <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero-->
                    <!--                        dolor duo.</p>-->
                    <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="bg-white text-center h-100 p-4 p-xl-5">
                    <img class="img-fluid mb-4" src="img/icon-3.png" alt="">
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
                <p class="text-white mb-0">This website is an e-commercial website about power milk. We want to provide
                    our good products for you guys.
                    Would you like to know more information? Click on the next button!</p>
            </div>
            <div class="col-md-5 text-md-end wow fadeIn" data-wow-delay="0.5s">
                <a class="btn btn-lg btn-secondary rounded-pill py-3 px-5" href="about.html">Click here</a>
            </div>
        </div>
    </div>
</div>
<!-- Firm Visit End -->


<!-- Testimonial Start -->
<div class="container-fluid bg-light bg-icon py-6 mb-5">
    <div class="container">
        <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s"
             style="max-width: 500px;">
            <h1 class="display-5 mb-3">Customer Reviews</h1>
            <p> “This section below is some customer's comments about our products.” </p>
        </div>
        <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
            <div class="testimonial-item position-relative bg-white p-5 mt-4">
                <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                <p class="mb-4"> “Gần đây mình có chia sẻ đã cho con sử dụng sữa A2 của Úc mà được hỏi thăm nhiều quá,
                    tiện đây mình sẽ nói luôn nha! Con mình đã sử dụng sản phẩm được 1 năm trở lại đây rồi, cân nặng và
                    chiều cao cứ tăng đều đều thôi. Sản phẩm tốt lắm nha!” </p>
                <div class="d-flex align-items-center">
                    <img class="flex-shrink-0 rounded-circle" src="img/testimonial-1.jpg" alt="">
                    <div class="ms-3">
                        <h5 class="mb-1">Chị Hoàng Hà</h5>
                        <span>Profession</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-item position-relative bg-white p-5 mt-4">
                <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                <p class="mb-4">"Mua nhiều lần rồi . Ensure mẹ mình uống thấy bà ăn ngon hơn và mập mạp hơn . Nên mua
                    cho người già uống hàng ngày tốt lắm."</p>
                <div class="d-flex align-items-center">
                    <img class="flex-shrink-0 rounded-circle" src="img/testimonial-2.jpg" alt="">
                    <div class="ms-3">
                        <h5 class="mb-1">Lan Anh</h5>
                        <span>Profession</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-item position-relative bg-white p-5 mt-4">
                <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                <p class="mb-4">"đóng gói chuyên nghiệp, sản phẩm đáng tiền, nếu uống tốt sẽ ủng hộ tiếp."</p>
                <div class="d-flex align-items-center">
                    <img class="flex-shrink-0 rounded-circle" src="img/testimonial-3.jpg" alt="">
                    <div class="ms-3">
                        <h5 class="mb-1">Thế Trần</h5>
                        <span>Profession</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-item position-relative bg-white p-5 mt-4">
                <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                <p class="mb-4">"sữa chính hãng, date dài, nguyên kem, dùng cho gia đình từ trên 6 tuổi đến người già
                    đều được."</p>
                <div class="d-flex align-items-center">
                    <img class="flex-shrink-0 rounded-circle" src="img/testimonial-4.jpg" alt="">
                    <div class="ms-3">
                        <h5 class="mb-1">thành nguyễn</h5>
                        <span>Profession</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial End -->


<!-- Blog Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s"
             style="max-width: 500px;">
            <h1 class="display-5 mb-3">Latest Blog</h1>
            <p></p>
        </div>
        <div class="row g-4">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <img class="img-fluid" src="img/blog-1.jpg" alt="">
                <div class="bg-light p-4">
                    <a class="d-block h5 lh-base mb-4" href="">Trả lời các thắc mắc của mẹ về sữa Vinamilk</a>
                    <div class="text-muted border-top pt-4">
                        <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                        <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2022</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <img class="img-fluid" src="img/blog-2.jpg" alt="">
                <div class="bg-light p-4">
                    <a class="d-block h5 lh-base mb-4" href="">[REVIEW] TOP 10+ Dòng sữa tăng chiều cao cho bé 1 tuổi
                        tốt nhất Hiện Nay</a>
                    <div class="text-muted border-top pt-4">
                        <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                        <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <img class="img-fluid" src="img/blog-3.jpg" alt="">
                <div class="bg-light p-4">
                    <a class="d-block h5 lh-base mb-4" href="">Review chi tiết về sữa Ensure cho người già: Ưu và nhược
                        điểm</a>
                    <div class="text-muted border-top pt-4">
                        <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                        <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog End -->


<!-- Footer Start -->
<div class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h1 class="fw-bold text-primary mb-4">Ha<span class="text-secondary">Cha</span>Milk</h1>
                <p>Temporarily out of stock.<br>
                    We are working hard to be back in stock as soon as possible.</p>
                <div class="d-flex pt-2">
                    <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i
                            class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i
                            class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i
                            class="fab fa-youtube"></i></a>
                    <a class="btn btn-square btn-outline-light rounded-circle me-0" href=""><i
                            class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Address</h4>
                <p class="text-primary"><i class="fa fa-map-marker-alt me-3 "></i>FIT NLU Ho Chi Minh City</p>
                <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                <p><i class="fa fa-envelope me-3"></i>info@example.com</p>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Quick Links</h4>
                <a class="btn btn-link" href="about.html">About Us</a>
                <a class="btn btn-link" href="contact.html">Contact Us</a>
                <a class="btn btn-link" href="">Our Services</a>
                <a class="btn btn-link" href="">Terms & Condition</a>
                <a class="btn btn-link" href="">Support</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Newsletter</h4>
                <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                <div class="position-relative mx-auto" style="max-width: 400px;">
                    <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text"
                           placeholder="Your email">
                    <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a href="#">HaChaMilk</a>, Copyright @GreenTea.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a href="">GreenTea member</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>

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
</body>
</html>