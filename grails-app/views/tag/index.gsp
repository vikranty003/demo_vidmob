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
    <title>Tag Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<div>
    <g:render template="/common/flash" />
    <ul class="list-inline">
        <g:each in="${tags}" var="tag">
            <li class="thumbnail">
                <g:link controller="tag" action="show" id="${tag.id}">
                    <h4>${tag.name}</h4>
                </g:link>
            </li>
        </g:each>
    </ul>
</div>
</body>
</html>