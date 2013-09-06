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
    <title>Add Feature - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="thumbnail">
    <p class="lead">Add Feature</p>
    <g:form controller="feature" action="save" role="form" class="form-horizontal">
        <g:render template="form"/>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-primary">Add Feature</button>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>