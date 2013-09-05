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
                <g:link controller="welcome" action="index" class="navbar-brand"><strong>Compfeat</strong></g:link>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <g:if test="${params.controller == 'product'}">
                        <li class="active"><g:link controller="product" action="index">Products</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="product" action="index">Products</g:link></li>
                    </g:else>
                    <g:if test="${params.controller == 'department'}">
                        <li class="active"><g:link controller="department" action="index">Departments</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="department" action="index">Departments</g:link></li>
                    </g:else>
                    <g:if test="${params.controller == 'meta'}">
                        <li class="active"><g:link controller="meta" action="index">Meta</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="meta" action="index">Meta</g:link></li>
                    </g:else>
                    <g:if test="${params.controller == 'feature'}">
                        <li class="active"><g:link controller="feature" action="index">Feature</g:link></li>
                    </g:if>
                    <g:else>
                        <li><g:link controller="feature" action="index">Feature</g:link></li>
                    </g:else>
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