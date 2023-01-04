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
                <li>Product</li>
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
            <button  class="button red --jb-modal">Add new</button>
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
                <table id="table-new-order" class="">
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
                    <c:set var="data" value="${2}"></c:set>
                    <c:forEach var="user" items="${user}"></c:forEach>
                    <% for (int i = 0; i < 50; i++) {%>


                    <tr>
                        <td class="image-cell">
                            <div class="img-sm">
                                <img src="/img/product-2.jpg">
                            </div>
                        </td>
                        <td data-label="Name">Rebecca Bauch</td>
                        <td data-label="Id">@10515</td>
                        <td data-label="Price">154.123$</td>
                        <td data-label="Inventory">1000</td>
                        <td data-label="Supplier">South Cory</td>
                        <td data-label="Category">0-6 mounth</td>
                        <td data-label="Discount">20%</td>
                        <td data-label="Status">


                            <c:if test="${data==1}">
                                <div class="status_order red">Đã hủy ${data} </div>
                            </c:if>
                            <c:if test="${data==2}">
                                <div class="  status_order green ">Đã giao ${data}</div>
                            </c:if>

                            <%--              <div class="  status_order green ">Đã hủy</div>--%>
                        </td>
                        <td data-label="Created">
                            <small class="text-gray-500" title="Oct 25, 2021">Oct 25, 2021</small>
                        </td>
                        <td class="actions-cell">
                            <div class="buttons right nowrap">
                                <button class="button small green --jb-modal" data-target="sample-modal-2"
                                        type="button">
                                    <span class="icon"><i class="mdi mdi-eye"></i></span>
                                </button>
                                <button class="button small red --jb-modal" data-target="sample-modal" type="button">
                                    <span class="icon"><i class="mdi mdi-trash-can"></i></span>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <%}%>

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

</div>

<!-- Scripts below are for demo only -->
<script type="text/javascript" src="admin/js/main.min.js?v=1628755089081"></script>


<script>
    !function (f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function () {
            n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = '2.0';
        n.queue = [];
        t = b.createElement(e);
        t.async = !0;
        t.src = v;
        s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
    }(window, document, 'script',
        'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '658339141622648');
    fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
               src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

</body>
</html>
