<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-05
  Time: 5:53 AM
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
        <li>Discounts</li>
      </ul>
    </div>
  </section>
  <%--Name and add button--%>
  <section class="is-hero-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
      <h1 class="title">
        Discount Tables
      </h1>
      <a href="/AddDiscountsControler">
        <button class="button red --jb-modal">Add new</button>
      </a>
    </div>

  </section>

  <section class="section main-section">

    <%--this is blogs table--%>
    <div class="card has-table">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Discounts
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <table id="table-discount" class="">
          <thead>
          <%-- this is name of colum    --%>
          <tr>

            <th>Name</th>
            <th>Id</th>
            <th>Decscription</th>
            <th>Percent</th>
            <th>Active</th>
            <th>Begin</th>
            <th>End</th>
            <th>Create At</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
          <%-- this is colum of table     --%>
          <c:forEach var="d" items="${discounts}">
          <tr>

            <td data-label="Name">${d.getDiscount_name()}</td>
            <td data-label="Id">${d.getId()}</td>
            <td data-label="Decscription">${d.getDesc()}</td>
            <td data-label="Percent">${d.getDiscountPercent()}</td>
            <td data-label="Active">
                  <c:if test="${d.getActive()==1}">
                    <div class="status_order green">Kích Hoạt</div>
                  </c:if>
                  <c:if test="${d.getActive()==0}">
                    <div class="status_order red">Ngừng Khuyến Mãi</div>
                  </c:if>

            </td>
            <td data-label="Begin">
              <small class="text-gray-500" >${d.getStartAt()}</small>
            </td>
            <td data-label="End">
              <small class="text-gray-500" >${d.getFinishAt()}</small>
            </td>
            <td data-label="Create At">
              <small class="text-gray-500" >${d.getCreateAt()}</small>
            </td>
            <td class="actions-cell">
              <div class="buttons right nowrap">
                <a href="AddDiscountsControler?id=${d.getId()}">
                  <button class="button small green --jb-modal"
                          type="button">
                    <span class="icon"><i class="mdi mdi-eye"></i></span>
                  </button>
                </a>
                <a href="DiscountsController?id=${d.getId()}&action=delete">
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
            <th>Name</th>
            <th>Id</th>
            <th>Decscription</th>
            <th>Percent</th>
            <th>Active</th>
            <th>Begin</th>
            <th>End</th>
            <th>Create At</th>
            <th></th>
          </tr>
          </tfoot>
        </table>
      </div>
    </div>

  </section>
  <%--footer  admin--%>
  <jsp:include page="view/footer_admin.jsp"></jsp:include>


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
    $('#table-discount').DataTable();
  });
</script>
</body>
</html>
