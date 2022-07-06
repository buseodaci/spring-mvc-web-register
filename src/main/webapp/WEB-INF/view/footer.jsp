<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="<spring:theme code="bootstrapMinCss"/>">
    <script src="<spring:theme code="bootstrapMinJs"/>" crossorigin="anonymous"
            integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ"></script>
    <script src="<spring:theme code="jqueryMinJs"/>"></script>
</head>
<body>
<style>
    .footer-style {
        background-color: #343a40 !important;
        position: fixed;
        height: 6vh;
        bottom: 0;
        width: 100%;
        text-align: center;
    }

    h6 {
        color: white;
        margin-top: 2vh;
    }
</style>
<div>
    <footer class="fixed-bottom footer-style">
        <h6>&copy; Copyright 2021</h6>
    </footer>
</div>
</body>
</html>
