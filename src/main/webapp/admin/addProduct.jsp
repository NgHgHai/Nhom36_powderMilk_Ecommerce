<%@ page import="com.nhom36.milkPowder.beans.Product" %><%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-05
  Time: 1:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="setup/head.jsp"></jsp:include>
</head>
<body>
<%--header of admin--%>
<jsp:include page="view/header_admin.jsp"></jsp:include>
<%--Menu-side of admin--%>
<jsp:include page="view/menu_side.jsp"></jsp:include>


<section class="is-title-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
        <ul>
            <li>Admin</li>
            <li>Product</li>
        </ul>
    </div>
</section>

<section class="is-hero-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
        <h1 class="title">
            Product
        </h1>
        <a href="/ProductsController?action=all">
            <button class="button red --jb-modal">Back</button>

        </a>
    </div>
</section>

<section class="section main-section">
    <div class="card mb-6">
        <header class="card-header">
            <p class="card-header-title">
                <span class="icon"><i class="mdi mdi-ballot"></i></span>
                Product
            </p>
        </header>
        <div class="card-content">
            <form method="post" action="AddProductController" enctype='multipart/form-data'>
                <div class="field">
                    <label class="label">From</label>
                    <div class="field-body">
                        <%--                        <c:if test="${}"--%>
                        Id
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" readonly placeholder="ID" name="id" id="id"
                                       value="${product.getId()}">
                                <span class="icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                        <%--Name--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" placeholder="Name" name="name" id="name"  required
                                       value="${product.getName()}">
                                <span class=" icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                        <%--Price--%>
                        <div class="field">
                            <div class="control icons-left icons-right">
                                <input class="input" type="number" placeholder="Price" name="price" id="price" required
                                       value="${product.getPrice()}">
                                <span class=" icon left"><i class="mdi mdi-mail"></i></span>
                                <span class="icon right"><p class="">VND</p></span>
                            </div>
                        </div>
                        <%--WeightAmount--%>
                        <div class="field">
                            <div class="control icons-left icons-right">
                                <input class="input" type="number" placeholder="WeightAmount" name="weightAmount" required
                                       id="weightAmount" value="${product.getWeightAmount()}">
                                <span class="icon left"><i class="mdi mdi-mail"></i></span>
                                <span class="icon right"><p class="">g</p></span>
                            </div>
                        </div>
                        <%--Inventory--%>
                        <div class="field">
                            <div class="control icons-left icons-right">
                                <input class="input" type="number" placeholder="Inventory" name="inventory" required
                                       id="inventory" value="${product.getInventory()}">
                                <span class="icon left"><i class="mdi mdi-mail"></i></span>
                                <span class="icon right"><p class="">unit</p></span>
                            </div>
                        </div>

                    </div>
                </div>

                <%--Active--%>
                <div class="field">
                    <label class="label">Active</label>
                    <div class="control">
                        <div class="select">
                            <select name="active">
                                <option value="1"  <c:if test="${1==product.getActive()}"> selected</c:if> >Đang kinh
                                    doanh
                                </option>
                                <option value="2"  <c:if test="${2==product.getActive()}"> selected</c:if> >Ngừng kinh
                                    doanh
                                </option>
                                <option value="3"  <c:if test="${3==product.getActive()}"> selected</c:if> >Giảm giá
                                </option>
                                <option value="4"  <c:if test="${4==product.getActive()}"> selected</c:if> >Hàng mới
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
                <%--Supplier--%>
                <div class="field">
                    <label class="label">Supplier</label>
                    <div class="control">

                        <div class="select">
                            <select name="supplierId">
                                <c:forEach items="${suppliers}" var="s">
                                    <option value="${s.getId()}"
<%--                                            <c:if test="${0==d.getActive()}"> disabled </c:if>--%>
                                            <c:if test="${d.getId() == product.getSupplierId()}"> selected</c:if>
                                    >
                                            ${s.getName()} </option>
                                </c:forEach>

                            </select>
                        </div>

                    </div>
                </div>
                <%--Category--%>
                <div class="field">
                    <label class="label">Category</label>
                    <div class="control">
                        <div class="select">
                            <select name="categoryId">
                                <c:forEach items="${categories}" var="c">
                                    <option value="${c.getId()}"
<%--                                            <c:if test="${0==d.getActive()}"> disabled </c:if>--%>
                                            <c:if test="${c.getId() == product.getCategoryId()}"> selected</c:if>
                                    >
                                            ${c.getName()} </option>
                                </c:forEach>

                            </select>
                        </div>
                    </div>
                </div>
                <%--Discount--%>
                <div class="field">
                    <label class="label">Discount</label>
                    <div class="control">
                        <div class="select">
                            <select name="discountId">
                                <c:forEach items="${discounts}" var="d">
                                    <option value="${d.getId()}"
                                            <c:if test="${0==d.getActive()}"> disabled </c:if>
                                            <c:if test="${d.getId() == product.getDiscountId()}"> selected</c:if>
                                    >
                                             ${d.getDiscountName()} </option>
                                </c:forEach>

                            </select>
                        </div>
                    </div>
                </div>
                <hr>

                <%--Decription--%>
                <div class="field">
                    <label class="label">Decription</label>
                    <div class="control">
                        <textarea class="textarea" placeholder="Decription" name="desc"> ${product.getDesc()}</textarea>
                    </div>
                    <p class="help">

                    </p>
                </div>
                <hr>
                <div class="card-content">

                    <div class="field">
                        <label class="label">File</label>
                        <div class="field-body">
                            <div class="field file">
                                <label class="upload control">
                                    <a class="button blue">
                                        Upload
                                    </a>
                                    <input type="file" name="imgDisplay">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <%--url--%>
                <div class="field">
                    <div class="control icons-left">
                        <input class="input" type="text" placeholder="url-img" name="url" id="url" readonly
                               value="${product.getImgDisplay()}">
                    </div>
                </div>
                <hr>
                <div class="field grouped">
                    <div class="control">
                        <button type="submit" class="button green">
                            Submit
                        </button>
                    </div>
                    <div class="control">
                        <button type="reset" class="button red">
                            Reset
                        </button>
                    </div>
                    <p class="help">
                        ${mess}
                    </p>
                </div>
            </form>
        </div>
    </div>

    <div class="card">
        <header class="card-header">
            <p class="card-header-title">
                <span class="icon"><i class="mdi mdi-ballot-outline"></i></span>
                Custom elements
            </p>
        </header>

    </div>
</section>

<%--footer  admin--%>
<jsp:include page="view/footer_admin.jsp"></jsp:include>

<div id="sample-modal" class="modal">
    <div class="modal-background --jb-modal-close"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Sample modal</p>
        </header>
        <section class="modal-card-body">
            <p>Xác nhận <b>XÓA</b></p>
        </section>
        <footer class="modal-card-foot">
            <button class="button --jb-modal-close">Cancel</button>
            <button class="button red --jb-modal-close">Confirm</button>
        </footer>
    </div>
</div>

<div id="sample-modal-2" class="modal">
    <div class="modal-background --jb-modal-close"></div>
    <div class="modal-card">
        <header class="modal-card-head">
            <p class="modal-card-title">Sample modal</p>
        </header>
        <section class="modal-card-body">
            <p>Chỉnh sửa dữ liệu và load lên ở đây</p>
        </section>
        <footer class="modal-card-foot">
            <button class="button --jb-modal-close">Cancel</button>
            <button class="button blue --jb-modal-close">Confirm</button>
        </footer>
    </div>
</div>


<script src="admin/js/jquery.min.js"></script>
<script src="admin/js/main.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="admin/js/chart.sample.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript" src="admin/js/chart.sample.min.js"></script>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>

<script>
    $(document).ready(function () {
        $('textarea').each(function () {
            this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow-y:hidden;');
        }).on('input', function () {
            this.style.height = 'auto';
            this.style.height = (this.scrollHeight) + 'px';
        });
    });

</script>

</body>
</html>
