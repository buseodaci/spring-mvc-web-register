<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="ISO-8859-1">
    <title>Ana sayfa</title>
    <link rel="stylesheet" href="<spring:theme code="bootstrapMinCss"/>">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" crossorigin="anonymous"
            integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ">
    </script>
    <script src="<spring:theme code="jqueryMinJs"/>"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<style>
    .main {
        height: 20vh;
        margin-top: 20vh;
    }

    .operation-buttons {
        margin-top: 2vh;
    }

    .add-user {
        margin-right: 1vh;
    }
</style>
<div class="container main">
    <div class="row align-items-center justify-content-center">
        <div>
            <h1 style="">Hoşgeldiniz</h1>
        </div>
    </div>
    <div class="row align-items-center justify-content-center operation-buttons">
        <a href="add_user" class="btn btn-outline-dark add-user">KULLANICI EKLE</a>
        <a href="view_users" class="btn btn-outline-dark">KULLANICILARI LİSTELE</a>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
