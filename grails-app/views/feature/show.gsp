<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/5/13
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${feature.name} - Feature- Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-default">
    <div class="panel-heading">${feature.name}</div>
    <div class="panel-body">
        <table class="table">
            <tbody>
            <tr>
                <td class="text-right" width="200"><strong>#</strong></td>
                <td>${feature.id}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Name</strong></td>
                <td>${feature.name}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Status</strong></td>
                <td>${feature.status}</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <g:link controller="feature" action="edit" id="${feature.id}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> Edit
                    </g:link>
                    <g:link controller="feature" action="remove" id="${feature.id}" class="btn btn-danger">
                        <span class="glyphicon glyphicon-trash"></span> Remove
                    </g:link>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div>

</body>
</html>