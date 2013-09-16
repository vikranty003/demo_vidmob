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
    <g:render template="/common/flash" />
    <div class="panel panel-success">
        <div class="panel-heading">${department.name}</div>
        <div class="panel-body">
            <table class="table">
                <tbody>
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
                        <td class="text-right"><strong>Meta</strong></td>
                        <td>
                            <g:each in="${department.metaList}" var="meta">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default">${meta.name}</button>
                                    <g:link controller="department"
                                            action="removeMeta"
                                            params="[departmentId: department.id, metaName: meta.name]"
                                            class="btn btn-default">
                                        &nbsp;<span class="glyphicon glyphicon-remove"></span>&nbsp;
                                            </g:link>
                                </div>
                            </g:each>

                        </td>
                    </tr>
                    <tr>
                        <td class="text-right"><strong>Feature</strong></td>
                        <td>
                            <g:each in="${department.featureList}" var="feature">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default">${feature.name}</button>
                                    <g:link controller="department"
                                            action="removeFeature"
                                            params="[departmentId: department.id, featureName: feature.name]"
                                            class="btn btn-default">
                                        &nbsp;<span class="glyphicon glyphicon-remove"></span>&nbsp;
                                    </g:link>
                                </div>
                            </g:each>

                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <g:link controller="department" action="edit" id="${department.id}" class="btn btn-primary">Edit</g:link>
                            <g:link controller="department" action="addMeta" params="[departmentId: department.id]" class="btn btn-primary">Add New Meta</g:link>
                            <g:link controller="department" action="addFeature" params="[departmentId: department.id]" class="btn btn-primary">Add New Feature</g:link>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>