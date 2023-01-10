<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-08
  Time: 8:02 PM
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
            <li>Slider</li>
        </ul>
    </div>
</section>

<section class="is-hero-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
        <h1 class="title">
            Slider
        </h1>
        <a href="/SlidersController?action=all">
            <button class="button red --jb-modal">Back</button>

        </a>
    </div>
</section>

<section class="section main-section">
    <div class="card mb-6">
        <header class="card-header">
            <p class="card-header-title">
                <span class="icon"><i class="mdi mdi-ballot"></i></span>
                Slider
            </p>
        </header>
        <div class="card-content">
            <form method="post" action="AddSliderController" enctype='multipart/form-data'>
                <div class="field">
                    <label class="label">From</label>
                    <div class="field-body">

<%--                        Id--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" readonly placeholder="ID" name="id" id="id"
                                       value="${slider.getId()}">
                                <span class="icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                        <%--Name--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" placeholder="Author Name" name="name" id="name"  required
                                       value="${slider.getName()}">
                                <span class=" icon left"><i class="mdi mdi-account"></i></span>
                            </div>
                        </div>
                        <%--Url--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="url" placeholder="Url" name="url" id="url"  required
                                       value="${slider.getUrl()}">
                            </div>
                        </div>
                        <hr>

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
                                            <input type="file" name="image">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--url--%>
                        <div class="field">
                            <div class="control icons-left">
                                <input class="input" type="text" placeholder="url-img" readonly
                                       value="${slider.getImage()}">
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

</section>

<%--footer  admin--%>
<jsp:include page="view/footer_admin.jsp"></jsp:include>


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

