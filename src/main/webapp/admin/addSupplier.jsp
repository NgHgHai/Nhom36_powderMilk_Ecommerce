<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-07
  Time: 10:54 PM
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
            <li>Supplier</li>
        </ul>
    </div>
</section>

<section class="is-hero-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
        <h1 class="title">
            Supplier
        </h1>
        <a href="/SuppliersController?action=all">
            <button class="button red --jb-modal">Back</button>
        </a>
    </div>
</section>

<section class="section main-section">
    <div class="card mb-6">
        <header class="card-header">
            <p class="card-header-title">
                <span class="icon"><i class="mdi mdi-ballot"></i></span>
                Supplier
            </p>
        </header>
        <div class="card-content">
            <form method="post" action="AddSuppliersController">
                <div class="field">
                    <label class="label">From</label>
                    <div class="field-body">
                        Id
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" readonly placeholder="ID" name="id" id="id"
                                       value="${supplier.getId()}">
                                <span class="icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                        <%--Name--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" placeholder="Name" name="name" id="name" required
                                       value="${supplier.getName()}">
                                <span class=" icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--Email--%>
                <div class="field">
                    <label class="label">Email</label>
                    <div class="control">
                        <input class="input" type="email" placeholder="Email"
                               name="email" value=" ${supplier.getEmail()}">
                    </div>
                    <p class="help">

                    </p>
                </div>
                <%--Phone--%>
                <div class="field">
                    <label class="label">Phone</label>
                    <div class="control">
                        <input class="input" type="tel" placeholder="Phone" name="phone" value=" ${supplier.getPhone()}">
                    </div>
                    <p class="help">

                    </p>
                </div>
                <hr>
                <%--Address--%>
                <div class="field">
                    <label class="label">Address</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Address"
                               name="address" value="${supplier.getAddress()}">
                    </div>
                    <p class="help">

                    </p>
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

