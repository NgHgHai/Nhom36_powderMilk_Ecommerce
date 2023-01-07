<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-04
  Time: 1:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside class="aside is-placed-left is-expanded" style="overflow-x: auto">
    <div class="aside-tools">
        <div>
            Admin <b class="font-black">One</b>
        </div>
    </div>
    <div class="menu is-menu-main">
        <p class="menu-label">General</p>
        <ul class="menu-list">
            <li class="active">
                <a href="/DashboardsController">
                    <span class="icon"><i class="mdi mdi-desktop-mac"></i></span>
                    <span class="menu-item-label">Dashboard</span>
                </a>
            </li>
        </ul>
        <p class="menu-label">Examples</p>
        <ul class="menu-list">

            <li class="--set-active-profile-html">
                <a href="../ProfileControler">
                    <span class="icon"><i class="mdi mdi-account-circle"></i></span>
                    <span class="menu-item-label">Profile</span>
                </a>
            </li>
            <li>
                <a href="/signIn_signUp_page/signin.html">
                    <span class="icon"><i class="mdi mdi-lock"></i></span>
                    <span class="menu-item-label">Login</span>
                </a>
            </li>
            <li>
                <a class="dropdown">
                    <span class="icon"><i class="mdi mdi-view-list"></i></span>
                    <span class="menu-item-label">Edit your website</span>
                    <span class="icon"><i class="mdi mdi-plus"></i></span>
                </a>
                <ul>
                    <li>
                        <a href="/CustommersController?action=all">
                            <span>Custommer</span>
                        </a>
                    </li>
                    <li>
                        <a href="/OrdersController">
                            <span>Order</span>
                        </a>
                    </li>
                    <li>
                        <a href="/CategorysController">
                            <span>Category</span>
                        </a>
                    </li>
                    <li>
                        <a href="/ProductsController?action=all">
                            <span>Product</span>
                        </a>
                    </li>
                    <li>
                        <a href="/BlogsController">
                            <span>Blog</span>
                        </a>
                    </li>
                    <li>
                        <a href="/SuppliersController">
                            <span>Supplier</span>
                        </a>
                    </li>
                    <li>
                        <a href="/DiscountsController">
                            <span>Discount</span>
                        </a>
                    </li>
                    <li>
                        <a href="/SlidersController">
                            <span>Slider</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <p class="menu-label">About</p>
        <ul class="menu-list">
            <li>
                <a href="https://github.com/NgHgHai/Nhom36_powderMilk_Ecommerce" class="has-icon">
                    <span class="icon"><i class="mdi mdi-github-circle"></i></span>
                    <span class="menu-item-label">GitHub</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
