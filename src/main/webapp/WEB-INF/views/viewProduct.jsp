
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<main>

    <div class="container-wrapper">
        <div class="container">

            <div class="page-header">
                <h1>Product Detail</h1>
                <p class="lead">checkout all the awasome  product available now!  detail info  </p>

            </div>
            <div class="container" ng-app="cartApp">
                <div class="row">
                    <div class="<col>-md-5">
                        <img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width: 10%;"/>
                    </div>
<div class="col-md-5">
    <h3>Product Name : ${product.productName} </h3>
    <h3>Product descrition : ${product.productDescription}</h3>

    <h3>
        <strong>Manufacturer</strong> : ${product.productCategory}
    </h3>

    <h3><strong>Category</strong> : ${product.productCategory}</h3>

    <h3><strong>Condition</strong> : ${product.productCondition}</h3>

    <h3><strong>Price</strong>  : ${product.productPrice} USD</h3>

    <br>

    <c:set var="role" scope="page" value="${param.role}"/>
    <c:set var="url" scope="page" value="/productList"/>
    <c:if test="${role='admin'}">
        <c:set var="url" scope="page" value="/admin/productInventory"/>
    </c:if>

    <p ng-controller="cartCtrl">
        <a href="<c:url value="${url}"/>" class="btn btn-default">Back</a>

        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
            <span class="glyphicon glyphicon-shopping-cart"/>Order now</a>

        <a href="<spring:url value="/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View cart</a>
    </p>
</div>
</div>
</div>

            <script src="<c:url value="/resources/js/controller.js"/> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>