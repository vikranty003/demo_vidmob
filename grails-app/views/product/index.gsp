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
    <div class="page-header">
        <p class="lead">Products <span class="text-right">Add Product</span></p>

    </div>

    <div class="row">
        <ul class="list-inline">
            <g:each in="${products}" var="product">
               <li class="thumbnail">
                   <g:link controller="product" action="list" id="${product.key}">
                       <h4>${product.value}</h4>
                   </g:link>
               </li>
            </g:each>
        </ul>
    </div>
</body>
</html>