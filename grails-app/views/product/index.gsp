<%--
  Created by IntelliJ IDEA.
  User: vikrantyadav
  Date: 9/2/13
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Products Compfeat Admin</title>
  <meta name="layout" content="admin">
</head>
<body>
    <g:render template="header" />
    <div>
        <ul class="list-inline">
            <g:each in="${departments}" var="department">
               <li class="thumbnail">
                   <g:link controller="product" action="list" params="${[departmentId: department.id]}">
                       <h4>${department.name}</h4>
                   </g:link>
               </li>
            </g:each>
        </ul>
    </div>
</body>
</html>