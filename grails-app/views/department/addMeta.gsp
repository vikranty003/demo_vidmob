<%--
  Created by IntelliJ IDEA.
  User: vikrant
  Date: 9/6/13
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Meta to Department</title>
    <meta name="layout" content="admin">
</head>
<body>
    <g:render template="header"/>
    <g:render template="/common/flash" />
    <div class="panel panel-default">
        <div class="panel-heading">Add Meta to Department "${department.name}"</div>
        <div class="panel-body">
            <g:form controller="department" action="saveMeta" role="form" class="form-horizontal">
                <g:hiddenField name="departmentId" value="${department.id}" />
                <g:render template="/meta/form"/>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-6">
                        <button type="submit" class="btn btn-primary">Add Meta</button>
                    </div>
                </div>
            </g:form>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Global Meta List</div>
        <div class="panel-body">
            <g:each in="${metaList}" var="metaItem">
                <div class="btn-group">
                    <button type="button" class="btn btn-default">${metaItem.name}</button>
                    <g:link controller="department"
                            action="addMeta"
                            params="[departmentId: department.id, metaId: metaItem.id]"
                            class="btn btn-default">
                        &nbsp;<span class="glyphicon glyphicon-plus"></span>&nbsp;
                    </g:link>
                </div>
            </g:each>
        </div>
    </div>

</body>
</html>