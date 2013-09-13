<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/5/13
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Product - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-default">
    <div class="panel-heading">Add Feature</div>
    <div class="panel-body">
        <g:form controller="feature" action="save" role="form" class="form-horizontal">

            <g:hiddenField name="departmentId" value="${department.id}"/>
            <div class="form-group">
                <label for="brandId" class="col-md-2 control-label">Brand</label>
                <div class="col-md-6">
                    <g:select name="brandId" from="${brands}" optionKey="key" optionValue="name" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="brandId" class="col-md-2 control-label">Tag</label>
                <div class="col-md-6">
                    <g:select name="tagId" from="${tags}" optionKey="key" optionValue="name" multiple="true" class="form-control"/>
                </div>
            </div>



            <div class="form-group">
                <div class="col-md-offset-2 col-md-6">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>