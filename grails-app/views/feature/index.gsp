<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/5/13
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Features Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="dropdown"/>
<div class="container">
    <g:render template="/common/flash" />
    <ul class="list-inline">
        <g:each in="${features}" var="feature">
            <li class="thumbnail">
                <g:link controller="feature" action="show" id="${feature.id}">
                    <h4>${feature.name}</h4>
                </g:link>
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>