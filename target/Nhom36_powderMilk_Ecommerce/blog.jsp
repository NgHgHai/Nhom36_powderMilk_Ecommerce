<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>HaChaMilk - Website mua sữa bột hàng đầu Việt Nam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../main/webapp/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/blog.css">
</head>

<body>

    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <jsp:include page="viewDefault/header.jsp"></jsp:include>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="container-fluid page-header wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a class="text-body" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-body" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-dark active" aria-current="page">Blog Grid</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Blog Start -->
    <div class="container-xxl py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">Latest Blog</h1>
                <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
            </div>
            <div class="row g-4">
                <c:forEach items = "${blogs}" var="blog">
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
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-2.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-3.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-2.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-3.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-1.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-3.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-1.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">--%>
<%--                    <img class="img-fluid" src="img/blogPost/blog-2.jpg" alt="">--%>
<%--                    <div class="bg-light p-4">--%>
<%--                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>--%>
<%--                        <div class="text-muted border-top pt-4">--%>
<%--                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>--%>
<%--                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">--%>
<%--                    <a class="btn btn-primary rounded-pill py-3 px-5" href="">Load More</a>--%>
<%--                </div>--%>
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
                    <a class="btn btn-link" href="about-us.jsp">About Us</a>
                    <a class="btn btn-link" href="contact.jsp">Contact Us</a>
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
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>