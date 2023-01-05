<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" tagdir="" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    <title>Starter Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
</head>
<body>
<input id="name" name="Your Name" type="text">
<input id="email" name="pass" type="password">
<div id="text"></div>
<button id="submit" type="submit">Submit</button>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
    $(document).ready(function () {
        $("#submit").click(function () {
            var name = $("#name").val();
            var email = $("#email").val();
            if (name == '' || email == '') {
                alert("Please fill all fields...!!!!!!");
            } else {
                $.ajax(
                    {
                        url: 'http://localhost:8080/MyServlet',
                        type: 'POST',
                        data: {name: name, email: email},
                        success: function (response) {
                            $("#text").html(response);
                        }
                    });
            }

        });
    });
</script>
<%--<script src="../js/jquery.min.js"></script>--%>
</body>

