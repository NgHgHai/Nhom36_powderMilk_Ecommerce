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
    <link href="img/favicon.ico" rel="icon">

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
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/style.min.css">
    <link rel="stylesheet" href="../css/customer.css">

</head>

<body>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status"></div>
</div>
<!-- Spinner End -->


<!-- Navbar Start -->
<jsp:include page="/viewDefault/header.jsp"></jsp:include>
<!-- Navbar End -->

<!--start main -->

<div id="v3_wrapper_container" class="width_common">
    <div class="container-xl">
        <div id="wrapper_container" class="width_common">
            <div id="profile_page" class="row">

                <%--                --%>
                <jsp:include page="menu_left/menu_left.jsp"></jsp:include>

                <%--    --%>
                <div class="col-lg-9 col-md-9 col-sm-9 ">
                    <div id="input_info_account" class="width_common space_bottom_20">
                        <form class="form form-edit-account" action="ManagementUser" method="post" id="form-account"
                              autocomplete="off" novalidate="novalidate" enctype="multipart/form-data">
                            <div class="title_profile_page">Change your information</div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-sm-6">
                                    <%--   name--%>
                                    <div class="form-group">
                                        <label for="lastname">Last Name :</label>
                                        <input class="form-control" type="text" id="lastname" name="lastname"
                                               placeholder="lastname" value="${user.getLastname()}">
                                        <label for="firstname">First Name :</label>
                                        <input class="form-control" type="text" id="firstname" name="firstname"
                                               placeholder="firstname" value="${user.getFirstname()}">
                                    </div>
                                    <%--    address--%>
                                    <div class="form-group">
                                        <label for="address">Address :</label>
                                        <input class="form-control" type="text" id="address"
                                               name="address" placeholder="address" value="${user.getAddress()}">
                                    </div>
                                    <%--    address--%>
                                    <div class="form-group">
                                        <label for="phone">Address :</label>
                                        <input class="form-control" type="tel" id="phone"
                                               name="phone" placeholder="phone" value="${user.getPhone()}" >
                                    </div>
                                    <%--    address--%>
                                    <div class="form-group">
                                        <label for="email">Address :</label>
                                        <input class="form-control" type="email" id="email"
                                               name="email" placeholder="email" value="${user.getEmail()}">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Avata :</label>
                                        <%--     nut upload file --%>
                                        <div class="field-body">
                                            <div class="field file">
                                                <label class="upload control">
                                                    <a class="button blue">
                                                        Upload
                                                    </a>
                                                    <input type="file" name="avatar">
                                                </label>
                                            </div>
                                        </div>
                                        <%-- link anh--%>
                                        <div class="control icons-left">
                                            <input class="input" type="text" placeholder="url-img" name="url" id="url"
                                                   readonly
                                                   value="${user.getAvatar()}">
                                        </div>

                                    </div>
                                        <div> <p style="color: red"> ${mess} </p> </div>

                                    <button type="submit" class="btn btn_site_1 width_common">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end main-->

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
                <a class="btn btn-link" href="../about-us.jsp">About Us</a>
                <a class="btn btn-link" href="../contact.jsp">Contact Us</a>
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
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>

<!-- Template Javascript -->
<script src="../js/main.js"></script>
</body>

</html>