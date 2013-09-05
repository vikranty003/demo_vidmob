<%--
  Created by IntelliJ IDEA.
  User: vikrantyadav
  Date: 9/4/13
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Meta - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="dropdown"/>
<g:render template="/common/flash" />
<div class="thumbnail">
    <p class="lead"></p>
    <g:form controller="meta" action="update" role="form" class="form-horizontal">
        <g:render template="form"/>
        <g:hiddenField name="id" value="${meta?.id}"/>
        <g:hiddenField name="version" value="${meta?.version}"/>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-default">Update Meta</button>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>