<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Kullanıcı Ekle</title>
    <link rel="stylesheet" href="<spring:theme code="bootstrapMinCss"/>">
    <script src="<spring:theme code="bootstrapMinJs"/>" crossorigin="anonymous"
            integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ"></script>
    <script src="<spring:theme code="jqueryMinJs"/>"></script>
    <style>
        .main {
            margin-top: 10vh;
        }

        .col-form-label {
            margin-bottom: 0.75rem;
        }

        .form-control {
            margin-bottom: 0.75rem;
        }

        .save-button {
            margin-top: 2vh;
        }

        .return-to-homepage {
            text-align: center;
            margin-top: 0.5rem;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container main" align="center">
    <h2>Kullanıcı Ekle</h2>
    <div class="table-responsive col-lg-12 table-style">
        <form:form method="post" action="save">
            <table class="table-hover">
                <tr class="col-lg-12 col-md-12">
                    <td class="col-lg-2 col-md-4">
                        <form:label path="name" cssClass="col-form-label">Ad</form:label>
                    </td>
                    <td class="col-lg-10 col-md-8">
                        <form:input path="name" type="text" class="form-control" placeholder="Ad"/>
                    </td>
                </tr>
                <tr class="col-lg-12">
                    <td class="col-md-2">
                        <form:label path="surname">Soyad</form:label>
                    </td>
                    <td class="col-md-10">
                        <form:input path="surname" type="text" class="form-control" placeholder="Soyad"/>
                    </td>
                </tr>
                <tr class="col-lg-12">
                    <td class="col-md-2">
                        <form:label path="bloodGroup">Kan Grubu</form:label>
                    </td>
                    <td class="col-md-10">
                        <form:input path="bloodGroup" type="text" class="form-control" placeholder="Seçiniz"/>
                    </td>
                </tr>
                <tr class="col-lg-12">
                    <td class="col-md-2">
                        <form:label path="phoneNumber">GSM</form:label>
                    </td>
                    <td class="col-md-10">
                        <form:input path="phoneNumber" type="text" class="form-control" placeholder="GSM"/>
                    </td>
                </tr>
                <tr class="col-lg-12">
                    <td class="col-md-2">
                        <form:label path="address">Adres</form:label>
                    </td>
                    <td class="col-md-10">
                        <form:input path="address" type="text" class="form-control" placeholder="Adres"/>
                    </td>
                </tr>
            </table>
            <div class="col-lg-3 save-button">
                <button class="btn btn-dark btn-lg" type="submit">KAYDET</button>
            </div>
            <div class="col-lg-3 return-to-homepage">
                <a href="/">Anasayfaya Dön</a>
            </div>
        </form:form>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
