<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/5/13
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Tag - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-default">
    <div class="panel-heading">Edit Tag</div>
    <div class="panel-body">
        <g:form controller="tag" action="update" role="form" class="form-horizontal">
            <g:render template="form"/>
            <g:hiddenField name="id" value="${tag?.id}"/>
            <g:hiddenField name="version" value="${tag?.version}"/>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-6">
                    <button type="submit" class="btn btn-primary">Update Tag</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>