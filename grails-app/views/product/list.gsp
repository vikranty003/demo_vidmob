<%--
  Created by IntelliJ IDEA.
  User: vikrantyadav
  Date: 9/2/13
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Product List</title>
    <meta name="layout" content="admin">
</head>
<body>
     <div class="container">
         <p class="lead">Product Listing</p>
         <div class="row">
             <div class="col-md-3 thumbnail">
                 <ul class="nav nav-pills nav-stacked">
                     <g:each in="${products}" var="product">
                         <g:if test="${product.key == params.id}">
                             <li class="active"><g:link controller="product" action="list" id="${product.key}" class="active">${product.value}</g:link></li>
                         </g:if>
                         <g:else>
                             <li><g:link controller="product" action="list" id="${product.key}">${product.value}</g:link></li>
                         </g:else>
                     </g:each>
                 </ul>
             </div>
             <div class="col-md-9">
                 <h2>something</h2>
             </div>
         </div>
     </div>
</body>
</html>