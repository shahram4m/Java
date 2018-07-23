
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<main>
    <div class="container-wrapper">
        <div class="container">

         <div class="page-header">
                <h1>All Product</h1>
             <p class="lead">checkout all the awasome  product available now!   </p>

         </div>

            <table class="table table-striped table-hover">
                <thead>

                <tr class="bg-success">
                    <td>Photo thumb</td>
                    <td>Product name</td>
                    <td>Category</td>
                    <td>Condition</td>
                    <td>Price</td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width: 10%;"/> </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/productList/viewProducts/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign">Details</span></a></td>
                </tr>
                </c:forEach>
            </table>

        </div>
    </div>
</main>
<%@include file="/WEB-INF/views/template/footer.jsp"%>