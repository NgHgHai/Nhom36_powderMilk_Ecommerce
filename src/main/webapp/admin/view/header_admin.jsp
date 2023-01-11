<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-05
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="navbar-main" class="navbar is-fixed-top">
    <div class="navbar-brand">
        <a class="navbar-item mobile-aside-button">
            <span class="icon"><i class="mdi mdi-forwardburger mdi-24px"></i></span>
        </a>
        <div class="navbar-item">
            <div class="control"><input placeholder="Search everywhere..." class="input"></div>
        </div>
    </div>
    <div class="navbar-brand is-right">
        <a class="navbar-item --jb-navbar-menu-toggle" data-target="navbar-menu">
            <span class="icon"><i class="mdi mdi-dots-vertical mdi-24px"></i></span>
        </a>
    </div>
    <div class="navbar-menu" id="navbar-menu">
        <div class="navbar-end">

            <div class="navbar-item dropdown has-divider has-user-avatar">
                <a class="navbar-link">
                    <div class="user-avatar">
                        <img src="${curentUser.getAvatar()}" alt="John Doe"
                             class="rounded-full">
                    </div>
                    <div class="is-user-name"><span>${curentUser.getFirstname()}</span></div>
                    <span class="icon"><i class="mdi mdi-chevron-down"></i></span>
                </a>
                <div class="navbar-dropdown">
                    <a class="navbar-item" href="Logout">
                        <span class="icon"><i class="mdi mdi-logout"></i></span>
                        <span>Log Out</span>
                    </a>
                </div>
            </div>
            <a href="" class="navbar-item has-divider desktop-icon-only">
                <span class="icon"><i class="mdi mdi-help-circle-outline"></i></span>
                <span>About</span>
            </a>
            <a href="https://github.com/NgHgHai/Nhom36_powderMilk_Ecommerce"
               class="navbar-item has-divider desktop-icon-only">
                <span class="icon"><i class="mdi mdi-github-circle"></i></span>
                <span>GitHub</span>
            </a>
            <a title="Log out" class="navbar-item desktop-icon-only" href="Logout>
                <span class="icon"><i class="mdi mdi-logout"></i></span>
                <span>Log out</span>
            </a>
        </div>
    </div>
</nav>
