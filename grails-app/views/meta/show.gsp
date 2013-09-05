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
    <title>${meta.name} - Department- Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
<g:render template="dropdown"/>
<div class="container">
    <g:render template="/common/flash" />
    <table class="table table-bordered">
        <tbody>
        <th colspan="2">${meta.name}</th>
        <tr>
            <td class="text-right"><strong>#</strong></td>
            <td>${meta.id}</td>
        </tr>
        <tr>
            <td class="text-right"><strong>Name</strong></td>
            <td>${meta.name}</td>
        </tr>
        <tr>
            <td class="text-right"><strong>Type</strong></td>
            <td>${meta.type}</td>
        </tr>
        <tr>
            <td class="text-right"><strong>Value</strong></td>
            <td>${meta.value}</td>
        </tr>
        <tr>
            <td class="text-right"><strong>Input</strong></td>
            <g:if test="${meta.input}">Yes</g:if>
            <g:else>No</g:else>
        </tr>
        <tr>
            <td class="text-right"><strong>Sort</strong></td>
            <g:if test="${meta.sort}">Yes</g:if>
            <g:else>No</g:else>
        </tr>
        <tr>
            <td class="text-right"><strong>Filter</strong></td>
            <g:if test="${meta.filter}">Yes</g:if>
            <g:else>No</g:else>
        </tr>
        <tr>
            <td class="text-right"><strong>Status</strong></td>
            <td>${meta.status}</td>
        </tr>
        <tr>
            <td></td>
            <td><g:link controller="meta" action="edit" id="${meta.id}" class="btn btn-default">Edit</g:link></td>
        </tr>
        </tbody>
    </table>

</div>

</body>
</html>