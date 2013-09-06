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
    <g:render template="header"/>
    <div class="container">
        <g:render template="/common/flash" />
        <table class="table table-bordered">
            <tbody>
                <th colspan="2">${department.name}</th>
                <tr>
                    <td class="text-right"><strong>#</strong></td>
                    <td>${department.id}</td>

                </tr>
                <tr>
                    <td class="text-right"><strong>Key</strong></td>
                    <td>${department.key}</td>

                </tr>
                <tr>
                    <td class="text-right"><strong>Name</strong></td>
                    <td>${department.name}</td>

                </tr>
                <tr>
                    <td class="text-right"><strong>Status</strong></td>
                    <td>${department.status}</td>

                </tr>

                <tr>
                    <td></td>
                    <td><g:link controller="department" action="edit" id="${department.id}" class="btn btn-primary">Edit</g:link></td>
                </tr>
            </tbody>
        </table>

    </div>

</body>
</html>