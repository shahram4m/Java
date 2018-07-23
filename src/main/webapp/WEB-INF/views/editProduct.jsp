
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<main>

    <div class="container-wrapper">
        <div class="container">

            <div class="page-header">
                <h1>Edit Product</h1>
                <p class="lead">edit product here ... </p>
            </div>

            <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct"
                       method="post" commandName="product" enctype="multipart/form-data">

                <form:hidden path="productId" id="productId" class="form-Control" value="${product.productId}"/>

                <div class="form-group">
                    <label class="control-label" for="name">Name</label>
                    <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
                </div>

                <div class="form-group">
                    <label class="control-label" for="category">Category</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instroment"/>Instroment</label>

                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>Recored</label>

                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>
                </div>

                <div class="form-group">
                    <label class="control-label" for="decription">Decription</label>
                    <form:textarea path="productDescription" id="decription" class="form-Control" value="${product.productDescription}"/>
                </div>

                <div class="form-group">
                    <label class="control-label" for="price">Price</label>
                    <form:input path="productPrice" id="price" class="form-Control"  value="${product.productPrice}"/>
                </div>


                <div class="form-group">
                    <label class="control-label" for="condition">Condition</label>

                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>

                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="record"/>Used</label>
                </div>

                <div class="form-group">
                    <label class="control-label" for="status">Status</label>

                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="productStatus" value="active"/>Active</label>

                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="productStatus" value="inactive"/>Inavtive</label>
                </div>


                <div class="form-group">
                    <label class="control-label" for="unitInStock">Unit In Stock</label>
                    <form:input path="unitInStock" id="unitInStock" class="form-Control"  value="${product.unitInStock}"/>
                </div>

                <div class="form-group">
                    <label class="control-label" for="manufactorer">Product Manufactorer</label>
                    <form:input path="productManufactorer" id="productManufactorer" class="form-Control"  value="${product.productManufactorer}"/>
                </div>


                <div class="form-group">
                    <label class="control-label" for="productImage">upload Picture</label>
                    <form:input id="productImage"  path="productImage" type="file" class="form:input-large"/>
                </div>

                <br><br/>

                <input type="submit" value="submit" class="btn btn-default">
                <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Cancel</a>

            </form:form>

        </div>
    </div>

</main>


<%@include file="/WEB-INF/views/template/footer.jsp"%>