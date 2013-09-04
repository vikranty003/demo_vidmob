<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/4/13
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${department.name} - Department- Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
    <g:render template="dropdown"/>
    <div class="row">
        <p class="lead">${department.name}</p>
    </div>
    <div class="row">
        <div class="col-lg-2">Key</div>
        <div class="col-lg-10">${department.key}</div>
    </div>
    <div class="row">
        <div class="col-lg-2">Name</div>
        <div class="col-lg-10">${department.name}</div>
    </div>
    <div class="row">
        <div class="col-lg-10 col-lg-offset-2">
            <g:link controller="department" action="edit" class="btn btn-default">Edit</g:link>
        </div>

    </div>

</body>
</html>