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
    <title>Add Global Meta - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-success">
    <div class="panel-heading">Add Global Meta</div>
    <div class="panel-body">
        <g:form controller="meta" action="save" role="form" class="form-horizontal">
            <g:render template="form"/>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-6">
                    <button type="submit" class="btn btn-primary">Add Meta</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>