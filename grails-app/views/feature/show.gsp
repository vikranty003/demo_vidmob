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
<g:render template="dropdown"/>
<div class="container">
    <g:render template="/common/flash" />
    <table class="table table-bordered">
        <tbody>
        <th colspan="2">${feature.name}</th>
        <tr>
            <td class="text-right"><strong>#</strong></td>
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
            <td><g:link controller="feature" action="edit" id="${feature.id}" class="btn btn-default">Edit</g:link></td>
        </tr>
        </tbody>
    </table>

</div>

</body>
</html>