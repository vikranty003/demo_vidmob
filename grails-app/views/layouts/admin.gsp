<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Compfeat Admin</title>
    <r:require modules="bootstrap"/>
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Compfeat</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">Home</a></li>
                    <g:if test="${params.controller == 'department'}">
                        <li class="active"><g:link controller="department" action="index">Departments</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="department" action="index">Departments</g:link></li>
                    </g:else>
                    <g:if test="${params.controller == 'product'}">
                        <li class="active"><g:link controller="product" action="index">Products</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="product" action="index">Products</g:link></li>
                    </g:else>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

    <div class="container">
            <g:layoutBody/>
            <r:layoutResources />
    </div>

</body>
</html>