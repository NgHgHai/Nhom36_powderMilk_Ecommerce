<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <a href="Home" class="navbar-brand ms-4 ms-lg-0">
            <h1 class="fw-bold text-primary m-0">Ha<span class="text-secondary">Cha</span>Milk</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="Home" class="nav-item nav-link active">Home</a>
                <a href="about-us" class="nav-item nav-link">About Us</a>
                <a href="ProductStore" class="nav-item nav-link">Products</a>
                <a href="Blog" class="nav-item nav-link">Blog</a>
                <a href="Contact" class="nav-item nav-link">Contact Us</a>
            </div>
            <div class="d-none d-lg-flex ms-2 ">
                <form action="Search" method="get" class="d-flex">
                    <input class="form-control me-2" type="search" name="txtSearch" placeholder="Search" aria-label="Search">
                    <button class="btn " type="submit" ><small class="fa fa-search text-body"></small></button>
                </form>
                <%----%>
                <c:if test="${userSession!=null}">
                <img src="${userSession.getAvatar()}" class="rounded-circle" width="30" height="30">
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" style="color: #0a0a0a "
                       data-bs-toggle="dropdown">Hi, ${userSession.getFirstname()} !</a>

                    <div class="dropdown-menu m-0">
                        <a href="ManagementUser?action=show" class="dropdown-item">Account</a>
                        <a href="ManagementUser?action=order" class="dropdown-item">Order Management</a>
                        <a href="Login?logout=true" class="dropdown-item">Log out</a>
                    </div>
                    </c:if>
                    <c:if test="${userSession==null}">
                    <i class="rounded-circle" width="30" height="30"></i>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" style="color: #0a0a0a " data-bs-toggle="dropdown">Hi,User!</a>
                        <div class="dropdown-menu m-0">
                            <a href="Login" class="dropdown-item">Log in</a>
                            <a href="Register" class="dropdown-item">Register</a>

                        </div>
                        </c:if>

                    </div>
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
                            <ul id="cart" class="list-group flex-column mb-sm-auto mb-0 align-items-start">
                                Không có sản phẩm nào trong giỏ hàng
                            </ul>
                            <a class="btn btn-primary rounded-3 " href="detailCart.jsp" role="button">view my
                                shopping
                                cart</a>
                        </div>
                    </div>

                    <!--                end right size-->
                </div>
            </div>
    </nav>
</div>