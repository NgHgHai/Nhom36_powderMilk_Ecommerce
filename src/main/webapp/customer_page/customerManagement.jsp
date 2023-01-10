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
    <div class="container-xxl">
        <div id="wrapper_container" class="width_common">
            <div id="profile_page" class="row">

                <%--      menu -side left           --%>
                <jsp:include page="menu_left/menu_left.jsp"></jsp:include>
                <%--    --%>

                <div class="col-lg-9 col-md-9 col-sm-9 ">
                    <%--               start     lasted order--%>
                    <div id="box_latest_order" class="width_common space_bottom_20">
                        <div class="title_profile_page">Latest Orders
                            <a class="txt_color_1 txt_seemore" href="ManagementUser?action=order">
                                All Orders <i class="fa fa-caret-right"></i>
                            </a>
                        </div>
                        <div class="content_box_profile_page">
                            <table class="tb_latest_order">
                                <thead>
                                <tr>
                                    <td  class="col_orderID">Order ID</td>
                                    <td  class="col_date">Date purchase</td>
                                    <td  class="col_total">Total</td>
                                    <td  class="col_status text-center">status</td>
                                    <td  class="col_view_detail">&nbsp;</td>
                                </tr>
                                </thead>
                                <%-- body table--%>
                                <tbody>
                                <c:forEach var="o" items="${orders}">
                                    <tr>
                                        <td data-label="Id order"><a href="">${o.getId()}</a></td>
                                        <td data-label=" Date purchase">${o.getCreateAt()}</td>
                                        <td data-label="Total" class="col_total" ><span class="price">${o.getTotal()}</span></td>
                                        <td data-label="Status" class="col_status text-center" >
                                            <span class="item_status_order" style="background-color: #4b8c6c">${o.getStatus()} </span></td>
                                        <td class="text-right"><a href="" class="action view"><span>See order</span></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <%--   end body table--%>
                            </table>
                        </div>
                    </div>
                    <%--               end    lasted order--%>

                    <%--               start account info         --%>
                    <div id="box_account_info" class="width_common space_bottom_20">
                        <div class="title_profile_page">Account Information</div>
                        <div class="content_box_profile_page">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-6">
                                    <div class="block_info_account width_common relative">
                                        <div class="name_account space_bottom_5">
                                            <strong>${user.getLastname()} ${user.getFirstname()}</strong>
                                        </div>
                                        <div class="email_account space_bottom_5">${user.getPhone()}</div>
                                        <div class="email_account space_bottom_5">${user.getAddress()}</div>
                                        <a class="txt_color_1 txt_xemthem" href="ManagementUser?action=changeInfoAcc">Edit</a>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <%--                 end account info --%>

                </div>
            </div>
        </div>
    </div>
</div>
<!--end main-->


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