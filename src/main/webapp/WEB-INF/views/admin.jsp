<%--
  Created by IntelliJ IDEA.
  User: sh.rostami
  Date: 6/24/2018
  Time: 6:15 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/template/header.jsp"%>
<main>

    <div class="container-wrapper">
        <div class="container">

            <div class="page-header">
                <h1>Administrator Page</h1>
                <p class="lead">admin Page </p>
            </div>

            <c:if test="${pageContext.request.userPrincipal.name != null}">

            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout"/>">Logout</a>
            </h2>

            </c:if>

            <h3>
                <a href="<c:url value="/admin/productInventory"/>"> Product Inventory </a>
            </h3>
            <p>here you can check and modify data</p>


<%@include file="/WEB-INF/views/template/footer.jsp"%>