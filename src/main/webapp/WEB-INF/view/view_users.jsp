<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kullanıcı Listesi</title>
    <link rel="stylesheet" href="<spring:theme code="bootstrapMinCss"/>">
    <script src="<spring:theme code="bootstrapMinJs"/>" crossorigin="anonymous"
            integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ">
    </script>
    <script src="<spring:theme code="jqueryMinJs"/>"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<style>
    .main {
        margin-top: 10vh;
        margin-bottom: 10vh;
    }

    .my-custom-scrollbar {
        position: relative;
        height: 68vh;
        overflow: auto;
    }

    .table-wrapper-scroll-y {
        display: block;
    }

    .table-style {
        margin-top: 2vh;
    }
</style>

<div class="container main" align="center">
    <h2>Kullanıcı Listesi</h2>
    <div class=" table-wrapper-scroll-y my-custom-scrollbar">
        <div class="table-responsive col-lg-12 table-striped mb-0 table-style">
            <table class="table table-hover">
                <tr class="table-secondary">
                    <th>Id</th>
                    <th>Ad</th>
                    <th>Soyad</th>
                    <th>Kan Grubu</th>
                    <th>GSM</th>
                    <th>Adres</th>
                </tr>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.surname}</td>
                        <td>${user.bloodGroup}</td>
                        <td>${user.phoneNumber}</td>
                        <td>${user.address}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
