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
    <title>${brand.name} - Brand- Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="header"/>
<g:render template="/common/flash" />
<div class="panel panel-default">
    <div class="panel-heading">${brand.name}</div>
    <div class="panel-body">
        <table class="table">
            <tbody>
            <tr>
                <td class="text-right" width="200"><strong>#</strong></td>
                <td>${brand.id}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Key</strong></td>
                <td>${brand.key}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Name</strong></td>
                <td>${brand.name}</td>
            </tr>
            <tr>
                <td class="text-right"><strong>Status</strong></td>
                <td>${brand.status}</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <g:link controller="brand" action="edit" id="${brand.id}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> Edit
                    </g:link>
                    <g:link controller="brand" action="remove" id="${brand.id}" class="btn btn-danger">
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