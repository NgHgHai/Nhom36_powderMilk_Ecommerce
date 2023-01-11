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
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap"
          rel="stylesheet">

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
    <link rel="stylesheet" href="css/shoppingcart.css">
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
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-start">
                    <li class="nav-item">
                        <a href="#" class="nav-link text-truncate">
                            <i class="fs-5 bi-house"></i><span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="#submenu1" data-bs-toggle="collapse" class="nav-link text-truncate">
                            <i class="fs-5 bi-speedometer2"></i><span class="ms-1 d-none d-sm-inline">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link text-truncate">
                            <i class="fs-5 bi-table"></i><span class="ms-1 d-none d-sm-inline">Orders</span></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="nav-link dropdown-toggle  text-truncate" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <i class="fs-5 bi-bootstrap"></i><span class="ms-1 d-none d-sm-inline">Bootstrap</span>
                        </a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdown">
                            <li><a class="dropdown-item" href="#">New project...</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-link text-truncate">
                            <i class="fs-5 bi-grid"></i><span class="ms-1 d-none d-sm-inline">Products</span></a>
                    </li>
                    <li>
                        <a href="#" class="nav-link text-truncate">
                            <i class="fs-5 bi-people"></i><span class="ms-1 d-none d-sm-inline">Customers</span> </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--       End  left Menu Size-->
        <a href="index.jsp" class="navbar-brand ms-4 ms-lg-0">
            <h1 class="fw-bold text-primary m-0">Ha<span class="text-secondary">Cha</span>Milk</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="about-us.jsp" class="nav-item nav-link">About Us</a>
                <a href="product/product.jsp" class="nav-item nav-link">Products</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="blog.jsp" class="dropdown-item">Blog Grid</a>
                        <a href="feature.html" class="dropdown-item">Our Features</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
            </div>
            <div class="d-none d-lg-flex ms-2 ">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn " type="submit"><small class="fa fa-search text-body"></small></button>
                </form>

                <div class="nav-item dropdown">
                    <a href="#" class="btn-sm-square bg-white rounded-circle ms-3 nav-link " data-bs-toggle="dropdown">
                        <small class="fa fa-user text-body"></small></a>
                    <div class="dropdown-menu m-0">
                        <a href="signIn_signUp_page/register.jsp" class="dropdown-item">Account</a>
                        <a href="#" class="dropdown-item">Order Management</a>
                        <a href="#" class="dropdown-item">Your Address</a>
                        <a href="#" class="dropdown-item">Log out</a>
                    </div>
                </div>
                <!--                start   right size-->
                <button class="btn-sm-square bg-white rounded-circle ms-3" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvas-end" role="button">
                    <small class="fa fa-shopping-bag text-body"></small>
                </button>
                <div class="offcanvas offcanvas-end w-25" tabindex="-1" id="offcanvas-end" data-bs-keyboard="false"
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
                                    <i class="fs-5 bi-house"></i><span class="ms-1 d-none d-sm-inline">Home</span>
                                </a>
                            </li>
                            <li>
                                <a href="#submenu1" data-bs-toggle="collapse" class="nav-link text-truncate">
                                    <i class="fs-5 bi-speedometer2"></i><span
                                        class="ms-1 d-none d-sm-inline">Dashboard</span> </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link text-truncate">
                                    <i class="fs-5 bi-table"></i><span class="ms-1 d-none d-sm-inline">Orders</span></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="nav-link dropdown-toggle  text-truncate" id="dropdown"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fs-5 bi-bootstrap"></i><span
                                        class="ms-1 d-none d-sm-inline">Bootstrap</span>
                                </a>
                                <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdown">
                                    <li><a class="dropdown-item" href="#">New project...</a></li>
                                    <li><a class="dropdown-item" href="#">Settings</a></li>
                                    <li><a class="dropdown-item" href="#">Profile</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Sign out</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="nav-link text-truncate">
                                    <i class="fs-5 bi-grid"></i><span
                                        class="ms-1 d-none d-sm-inline">Products</span></a>
                            </li>
                            <li>
                                <a href="#" class="nav-link text-truncate">
                                    <i class="fs-5 bi-people"></i><span class="ms-1 d-none d-sm-inline">Customers</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--                end right size-->
            </div>
        </div>
    </nav>
</div>
<!-- Navbar End -->

<!--information receiver start-->
<!--<div class="container-xl">-->
<!-- -->
<!--</div>-->
<!--information receiver end-->

<!--products in shopping cart start-->
<div id="v3_wrapper_container" class="width_common" style="margin-top: 200px">
    <div class="container-xl account-orders">
        <div id="wrapper_container" class="row">
            <div id="profile_page" class="row" style="background-color: azure;margin-bottom: 20px" >
                <div class="col-lg-4 col-md-4 col-xs-4" >
                    <div class="block_info_account width_common relative">
                        <div class="name_account space_bottom_5">
                            <c:if test="${userSession!=null}">
                            <strong>'${userSession.getFirstname() + userSession.getLastname()}}</strong>
                        </div>
                        <div class="email_account space_bottom_5">${userSession.getPhone()}</div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-xs-8">
                    <p class=" customer-address text-primary"> ${userSession.getAddress()} </p>
                    <a class="txt_color_1 txt_xemthem" href="customer_page/receiveAddress.jsp">Edit</a>
                </div>
            </div>
            <div id="product_list" class="row" style="background-color: azure">
                <div class="col-lg-9 col-md-9 col-sm-9">

                    <div id="block_donhang_cart" class="width_common  space_bottom_20">
                        <div class="content_box_profile_page order_type_">
                            <div class=" title_donhang space_bottom_20 relative">
                                <strong>Sản Phẩm</strong>
                            </div>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID product</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name Product</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td><span class="txt_color_1">MT001</span></td>
                                    <td><img src="img/prenant/product-1.jpg" alt="" style="width: 100px; height: auto">
                                    </td>
                                    <td><span class="txt_333">Sữa Dialac dành cho mẹ bầu</span></td>
                                    <td><span class="txt_333">1</span></td>
                                    <td><strong class="txt_color_2">554,000 đ</strong></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td><span class="txt_color_1">MT001</span></td>
                                    <td><img src="img/prenant/product-1.jpg" alt="" style="width: 100px; height: auto">
                                    </td>
                                    <td><span class="txt_333">Sữa Dialac dành cho mẹ bầu</span></td>
                                    <td><span class="txt_333">1</span></td>
                                    <td><strong class="txt_color_2">554,000 đ</strong></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td><span class="txt_color_1">MT001</span></td>
                                    <td><img src="img/prenant/product-1.jpg" alt="" style="width: 100px; height: auto">
                                    </td>
                                    <td><span class="txt_333">Sữa Dialac dành cho mẹ bầu</span></td>
                                    <td><span class="txt_333">1</span></td>
                                    <td><strong class="txt_color_2">554,000 đ</strong></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 ">
                    <div id="box_hoadon" class="item_box_col_right space_bottom_20">
                        <div class="title_common_site"><strong>Yours Invoice</strong></div>
                        <div class="content_common_site">
                            <div class="block_thanhtien">
                                <div class="space_bottom_5">
                                    Tạm tính:<b class="pull-right">
                                    572.000 ₫
                                </b>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="space_bottom_5">
                                    Giảm giá:
                                    <b class="pull-right">
                                        -0 ₫
                                    </b>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="width_common space_bottom_5"
                                     style="border-top:1px solid #e5e5e5;padding-top: 11px">
                                    Tổng cộng:<b class="txt_giatien txt_color_2 pull-right">
                                    572.000 ₫
                                </b>
                                    <div class="clearfix"></div>
                                </div>
                                <div class=" space_bottom_5 txt_999">(Đã bao gồm VAT)</div>
                                <div class="text-center">
                                    <button class="btn btn_site_2" type="submit"
                                            onclick="window.pageCartStatic.onClick('cartCheckOutClick', this)">Tiến hành
                                        đặt hàng
                                    </button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="paymethod" class="tab_checkout_paymethod">
                <div class="checkout_payment_method_title text-xl-start txt_slogan"> Payment Method</div>
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active " id="pills-cash-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-cash" type="button" role="tab"
                                aria-controls="pills-cash" aria-selected="true">Cash on delivery</button>
                    </li>

                    <li class="nav-item" role="presentation">
                        <button class="nav-link " id="pills-credit-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-credit" type="button" role="tab" aria-controls="pills-credit"
                                aria-selected="false">Credit card/Debit card</button>
                    </li>
                </ul>
                <hr>
                <div class="tab-content" id="pills-tabContent">
                    <!-- thanh toán khi nhận hàng -->
                    <div class="tab-pane fade show active" id="pills-cash" role="tabpanel"
                         aria-labelledby="pills-cash-tab" tabindex="0">
                    </div>
                    <!-- thanh toán bằng thẻ ghi nợ -->
                    <div class="tab-pane fade show active" id="pills-credit" role="tabpanel"
                         aria-labelledby="pills-credit-tab" tabindex="0">


                    </div>
                </div>
                </hr>

            </div>
        </div>
    </div>
</div>
<!--products in shopping cart start-->


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