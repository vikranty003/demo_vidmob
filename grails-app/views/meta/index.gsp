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
    <title>Global Meta Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="dropdown"/>
<div class="container">
    <g:render template="/common/flash" />
    <ul class="list-inline">
        <g:each in="${metaList}" var="meta">
            <li class="thumbnail">
                <g:link controller="meta" action="show" id="${meta.id}">
                    <h4>$${meta.name}</h4>
                </g:link>
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>