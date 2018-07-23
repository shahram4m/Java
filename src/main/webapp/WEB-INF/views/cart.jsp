<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script src="<c:url value="/resources/js/controller.js"/> "></script>

<%--***********************************************************************************************************************--%>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>CART</h1>
            <p>Products you have selected </p>
            <p>Cart id is: ${cartId}</p>
        </div>
    </div>
</section>

<section class="container" ng-app="cartApp">
    <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                 <div>
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    <a href='<spring:url value="/order/${cartId}"></spring:url>' class="btn btn-success pull-right"><span class="glyphicon  glyphicon-shopping-cart"></span> Check out</a>
                </div>
        <table class="table table-hover">
            <tr>
                <th>Product</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <tr ng-repeat="item in cart.cartItem">
                <td>{{item.product.productName}}</td>
                <td>{{item.product.productPrice}}</td>
                <td>{{item.quantity}}</td>
                <td>{{item.totalPrice}}</td>
                <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">Remove</a></td>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th>Grand Total</th>
                <th>{{cart.grandTotal}}</th>
            </tr>
        </table>

        <a href="<spring:url value="/productList"/>" class="btn btn-default">Continue Shopping</a>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp"%>