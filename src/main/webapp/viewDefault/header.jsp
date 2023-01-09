<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

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
                        <a href="about-us.jsp" class="nav-link text-truncate">
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
                                <a href="Blog" class="dropdown-item">Blog Grid</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="Contact" class="nav-link text-truncate">
                            <span class="ms-1 d-none d-sm-inline">Contact US</span></a>
                    </li>

                </ul>
            </div>
        </div>
        <!--       End  left Menu Size-->
        <a href="Home" class="navbar-brand ms-4 ms-lg-0">
            <h1 class="fw-bold text-primary m-0">Ha<span class="text-secondary">Cha</span>Milk</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="Home" class="nav-item nav-link active">Home</a>
                <a href="about-us" class="nav-item nav-link">About Us</a>
                <a href="ProductStore" class="nav-item nav-link">Products</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu m-0">
                        <a href="Blog" class="dropdown-item">Blog Grid</a>
                        <a href="feature.html" class="dropdown-item">Our Features</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                    </div>
                </div>
                <a href="Contact" class="nav-item nav-link">Contact Us</a>
            </div>
            <div class="d-none d-lg-flex ms-2 ">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn " type="submit"><small class="fa fa-search text-body"></small></button>
                </form>

                <div class="nav-item dropdown">
                    <a class="btn-sm-square bg-white rounded-circle ms-3 nav-link " href="customer.html"
                       data-bs-toggle="dropdown">
                        <c:if test="${userSession== null}">
                        <small class="fa fa-user text-body" class="rounded-circle" width="30" height="30"></small>
                    <div class="dropdown-menu m-0">
                        <a href="Login" class="dropdown-item">Log in</a>
                        <a href="Register" class="dropdown-item">Register</a>
                    </div>
                    </c:if>
                        <c:if test="${userSession!= null}">
                            <img src="${userSession.getAvatar()}" class="rounded-circle" width="30" height="30">
                    <div class="dropdown-menu m-0">
                        <a href="Register" class="dropdown-item">Account</a>
                        <a href="customer.html" class="dropdown-item">Order Management</a>
                        <a href="receiveAddress.html" class="dropdown-item">Your Address</a>
                        <a href="#" class="dropdown-item">Log out</a>
                    </div>
                    </c:if>
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