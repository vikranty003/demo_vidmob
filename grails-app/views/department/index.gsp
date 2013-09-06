<%--
  Created by IntelliJ IDEA.
  User: vikrantyadav
  Date: 9/2/13
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Departments Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<div class="container">
    <g:render template="/common/flash" />
    <ul class="list-inline">
        <g:each in="${departments}" var="department">
            <li class="thumbnail">
                <g:link controller="department" action="show" id="${department.id}">
                    <h4>${department.key} : ${department.name}</h4>
                </g:link>
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>