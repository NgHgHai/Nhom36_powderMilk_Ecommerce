<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-04
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="">
<head>
    <jsp:include page="setup/head.jsp"></jsp:include>

</head>
<body>

<div id="app">
    <%--header of admin--%>
    <jsp:include page="view/header_admin.jsp"></jsp:include>
    <%--Menu-side of admin--%>
    <jsp:include page="view/menu_side.jsp"></jsp:include>
    <%--Thanh hiển thị dẫn mục--%>
    <section class="is-title-bar">
        <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
            <ul>
                <li>Admin</li>
                <li>Products</li>
            </ul>
        </div>
    </section>
    <%--Name and add button--%>
    <section class="is-hero-bar">
        <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
            <h1 class="title">
                Product Tables
            </h1>
            <a href="/AddProductController">
                <button class="button red --jb-modal">Add new</button>
            </a>
        </div>

    </section>

    <section class="section main-section">

        <%--this is order table--%>
        <div class="card has-table">
            <header class="card-header">
                <p class="card-header-title">
                    <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
                    Products
                </p>
                <a href="#" class="card-header-icon">
                    <span class="icon"><i class="mdi mdi-reload"></i></span>
                </a>
            </header>
            <div class="card-content">
                <table id="table-product" class="">
                    <thead>
                    <%-- this is name of colum    --%>
                    <tr>
                        <th></th>
                        <th>Name</th>
                        <th>Id</th>
                        <th>Price</th>
                        <th>Inventory</th>
                        <th>Supplier</th>
                        <th>Category</th>
                        <th>Discount</th>
                        <th>Status</th>
                        <th>Created</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>

                    <%-- this is colum of table     --%>

                    <c:forEach var="p" items="${products}">


                        <tr>
                            <td class="image-cell">
                                <div class="img-my" style="height: 100px;width: 100px">
                                    <img src=${p.getImgDisplay()} >
                                </div>
                            </td>
                            <td data-label="Name">${p.getName()}</td>
                            <td data-label="Id">${p.getId()}</td>
                            <td data-label="Price">${p.getPrice()}</td>
                            <td data-label="Inventory">${p.getInventory()}</td>
                            <td data-label="Supplier">${p.getSupplier().getName()}</td>
                            <td data-label="Category">${p.getCategory().getName()}</td>
                            <td data-label="Discount">${p.getDiscount().getDiscount_name()}</td>
                            <td data-label="Status">


                                <c:if test="${p.getActive()==1}">
                                    <div class="status_order green">Đang kinh doanh</div>
                                </c:if>
                                <c:if test="${p.getActive()==2}">
                                    <div class="status_order red">Ngừng kinh doanh</div>
                                </c:if>
                                <c:if test="${p.getActive()==3}">
                                    <div class="status_order green">Giảm giá</div>
                                </c:if>
                                <c:if test="${p.getActive()==4}">
                                    <div class="status_order orange">Hàng mới</div>
                                </c:if>

                                    <%--              <div class="  status_order green ">Đã hủy</div>--%>
                            </td>
                            <td data-label="Created">
                                <small class="text-gray-500" >${p.getCreateAt()}</small>
                            </td>
                            <td class="actions-cell">
                                <div class="buttons right nowrap">
                                    <a href="AddProductController?id=${p.getId()}">
                                    <button class="button small green --jb-modal"
                                            type="button">
                                        <span class="icon"><i class="mdi mdi-eye"></i></span>
                                    </button>
                                    </a>
                                    <a href="ProductsController?id=${p.getId()}&action=delete">
                                    <button class="button small red --jb-modal" type="button">
                                        <span class="icon"><i class="mdi mdi-trash-can"></i></span>
                                    </button>
                                    </a>
                                </div>
                            </td>
                        </tr>

                    </c:forEach>

                    </tbody>
                    <tfoot>
                    <tr>
                        <th></th>
                        <th>Name</th>
                        <th>Id</th>
                        <th>Price</th>
                        <th>Inventory</th>
                        <th>Supplier</th>
                        <th>Category</th>
                        <th>Discount</th>
                        <th>Status</th>
                        <th>Created</th>
                        <th></th>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>

    </section>
    <%--footer  admin--%>
    <jsp:include page="view/footer_admin.jsp"></jsp:include>

    <div id="sample-modal" class="modal">
        <div class="modal-background --jb-modal-close"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">Delete</p>
            </header>
            <section class="modal-card-body">
                <p>Xác nhận <b>XÓA</b></p>
            </section>
            <footer class="modal-card-foot">
                <button class="button --jb-modal-close">Cancel</button>

                <button class="button red --jb-modal-close">
                    <a href="/ProductsController?id=${p.getId()}&action=delete"> </a>Confirm
                </button>
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
                <a href="/ProductsController?id=${p.getId()}&action=delete">
                <button class="button blue --jb-modal-close">Confirm</button>
                </a>
            </footer>
        </div>
    </div>

</div>

<!-- Scripts below are for demo only -->

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
        $('#table-product').DataTable();
    });
</script>


</body>
</html>
