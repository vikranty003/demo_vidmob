<%--
  Created by IntelliJ IDEA.
  User: vikrantyadav
  Date: 9/4/13
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Department - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
    <g:render template="dropdown"/>
    <div class="thumbnail">
        <p class="lead">Add Department</p>
        <g:form controller="department" action="add" role="form" class="form-horizontal">
            <div class="form-group">
                <label for="key" class="col-lg-2 control-label">Key</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="key" placeholder="Enter Department Key" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-lg-2 control-label">Name</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="name" placeholder="Enter Department Name" required="true" pattern="[a-z0-9]+">
                </div>
            </div>
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-default">Add Department</button>
              </div>
            </div>
        </g:form>
    </div>
</body>
</html>