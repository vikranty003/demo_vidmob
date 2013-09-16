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
    <title>${tag.name} - Tag- Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-success">
    <div class="panel-heading">${tag.name}</div>
    <div class="panel-body">
        <table class="table">
            <tbody>
            <tr>
                <td class="text-right" width="200"><strong>#</strong></td>
                <td>${tag.id}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Key</strong></td>
                <td>${tag.key}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Name</strong></td>
                <td>${tag.name}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Status</strong></td>
                <td>${tag.status}</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <g:link controller="tag" action="edit" id="${tag.id}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> Edit
                    </g:link>
                    <g:link controller="tag" action="remove" id="${tag.id}" class="btn btn-danger">
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