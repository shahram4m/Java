<%--
  Created by IntelliJ IDEA.
  User: sh.rostami
  Date: 6/24/2018
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<main>

    <div class="container-wrapper">
        <div class="container">

            <div class="page-header">
                <h1>Product Inventory</h1>
                <p class="lead">this product iinventoty page here   </p>

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

                        <td>
                            <a href="<spring:url value="/productList/viewProducts/${product.productId}" />">
                                <span class="glyphicon glyphicon-info-sign">Details</span>
                            </a>
                        </td>

                        <td>
                            <a href="<spring:url value="/admin/productInventory/deteleProduct/${product.productId}" />">
                                <span class="glyphicon glyphicon-remove">Delete</span>
                            </a>
                        </td>

                        <td>
                            <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}" />">
                                <span class="glyphicon glyphicon-pencil">Edit</span>
                            </a>
                        </td>


                    </tr>
                </c:forEach>
            </table>
            <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary"> Add New Product</a>

<%@include file="/WEB-INF/views/template/footer.jsp"%>