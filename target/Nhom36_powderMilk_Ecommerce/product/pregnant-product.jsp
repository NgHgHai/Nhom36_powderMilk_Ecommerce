
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>HaChaMilk - Website mua sữa bột hàng đầu Việt Nam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/product.css">
</head>

<body>
<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status"></div>
</div>
<!-- Spinner End -->

<!-- Navbar Start -->
<jsp:include page="/viewDefault/header.jsp"></jsp:include>
<!-- Navbar End -->


<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container">
        <nav aria-label="breadcrumb animated slideInDown">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a class="text-body" href="#">Home</a></li>
                <li class="breadcrumb-item"><a class="text-body" href="#">Pages</a></li>
                <li class="breadcrumb-item text-dark active" aria-current="page">Products</li>
            </ol>
        </nav>
    </div>
</div>
<!-- Page Header End -->


<!-- Product Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-0 gx-5 align-items-end">
            <div class="col-lg-6">
                <div class="section-header text-start mb-5 wow fadeInUp" data-wow-delay="0.1s"
                     style="max-width: 500px;">
                    <h1 class="display-5 mb-3">Our Products</h1>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <div id="tab-1" class="tab-pane fade show p-0 active">
                <div class="row g-4">
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="../img/prenant/product-1.jpg" alt="">
                                <div class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                    New
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <a class="d-block h5 mb-2" href="">Sữa bột XO I am Mother Mom</a>
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
                    <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="../img/prenant/product-2.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-3.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-4.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-5.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-6.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-7.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/prenant/product-8.jpg" alt="">
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
                        <nav aria-label="Page navigation example ">
                            <ul class="pagination ">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div id="tab-2" class="tab-pane fade show p-0">
                <div class="row g-4">
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="../img/graphics1/product-1.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-2.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-3.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-4.jpg" alt="">
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
                    <div class="col-xl-3 col-lg-4 col-md-6" >
                        <div class="product-item">
                            <div class="position-relative bg-light overflow-hidden">
                                <img class="img-fluid w-100" src="../img/graphics1/product-5.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-6.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-7.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics1/product-8.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-1.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-2.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-3.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-4.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-5.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-6.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-7.jpg" alt="">
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
                                <img class="img-fluid w-100" src="../img/graphics2/product-8.jpg" alt="">
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


<!--     Footer slogan start-->
<div class="slogan_footer row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
            <div class="item_slogan text-center">
                <div><img src="../img/graphics/icon_footer_1.svg" class="loading" data-was-processed="true"></div>
                <div class="txt_slogan"><br>Cash On Delivery</div>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
            <div class="item_slogan text-center">
                <div><img src="../img/graphics/icon_footer_3.svg" class="loading" data-was-processed="true"></div>
                <div class="txt_slogan"><br>Free Refunds <br> and exchanges 14 days</div>
            </div>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
            <div class="item_slogan text-center">
                <div><img src="../img/graphics/icon_footer_4.svg" class="loading" data-was-processed="true"></div>
                <div class="txt_slogan"><br>Global<br> Reputable brand</div>
            </div>
        </div>
    </div>
</div>
<!--     Footer slogan end-->


<%--footer start--%>
<jsp:include page="/viewDefault/footer.jsp"></jsp:include>
<%--footer end--%>



<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="../js/main.js"></script>
</body>

</html>
