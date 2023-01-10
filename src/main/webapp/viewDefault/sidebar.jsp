<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="form" action="ProductStore" method="get">
    <div class="container-fluid sidebar-categories">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories ">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All Categories</span>
                    </div>
                    <ul>
                        <li><a href="ProductStore?cat=all">All Products</a></li>
                        <c:forEach items="${categories}" var="cat">
                            <li><a href="ProductStore?cat=${cat.getId()}">${cat.getName()}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__item set-bg">
                    <div class="hero__text">
                        <span>Good Milk_ Good Life</span>
                        <h2>PowderMilk Gold quality</h2>
                    </div>
                </div>
            </div>

        </div>
    </div>
</form>
<!--sidebar end-->
