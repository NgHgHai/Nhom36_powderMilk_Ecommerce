<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-05
  Time: 5:36 AM
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
        <li>Suppliers</li>
      </ul>
    </div>
  </section>
  <%--Name and add button--%>
  <section class="is-hero-bar">
    <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
      <h1 class="title">
        Supplier Tables
      </h1>
      <a href="/AddSuppliersController">
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
          Suppliers
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <table id="table-supplier" class="">
          <thead>
          <%-- this is name of colum    --%>
          <tr>
            <th></th>
            <th>Name</th>
            <th>Id</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
          <%-- this is colum of table     --%>

          <c:forEach var="s" items="${suppliers}">

          <tr>
            <td class="image-cell">
              <div class="image">
                <img src="https://avatars.dicebear.com/v2/initials/${s.getName()}.svg"
                     class="rounded-full">
              </div>
            </td>
            <td data-label="Name">${s.getName()}</td>
            <td data-label="Id">${s.getId()}</td>
            <td data-label="Email">${s.getEmail()}</td>
            <td data-label="Phone">${s.getPhone()}</td>
            <td data-label="Adrress">${s.getAddress()}</td>
            <td class="actions-cell">
              <div class="buttons right nowrap">
                <a href="AddSuppliersController?id=${s.getId()}">
                  <button class="button small green --jb-modal"
                          type="button">
                    <span class="icon"><i class="mdi mdi-eye"></i></span>
                  </button>
                </a>
                <a href="SuppliersController?id=${s.getId()}&action=delete">
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
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
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
    $('#table-supplier').DataTable();
  });
</script>
</body>
</html>
