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
    <title>Edit Department - Compfeat Admin</title>
    <meta name="layout" content="admin">
</head>
<body>
    <g:render template="header"/>
    <g:render template="/common/flash" />
    <div class="panel panel-success">
        <div class="panel-heading">Edit Department</div>
        <div class="panel-body">
            <g:form controller="department" action="update" role="form" class="form-horizontal">
                <g:render template="form"/>
                <g:hiddenField name="id" value="${department?.id}"/>
                <g:hiddenField name="version" value="${department?.version}"/>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-6">
                        <button type="submit" class="btn btn-primary">Update Department</button>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Features</strong></div>
                <div class="panel-body">
                    <ul class="list-group" id="features-info">
                    </ul>
                </div>

            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel">
                <div class="panel-heading">Meta</div>
                <div class="panel-body">
                </div>
            </div>
        </div>

    </div>
    <g:javascript>
        var features = { 'size':['length', 'height', 'width'], 'some camera': ['front camera', 'back camera'] };
        function renderTree(){

            var featureStr = "";
            for(prop in features){
                featureStr += "<li class='list-group-item'>";
                featureStr += "<strong>"+prop+"</strong>";
                featureStr += "<button class='btn btn-danger btn-xs pull-right' onclick='removeFeature(\""+prop+"\", null)' ><span class='glyphicon glyphicon-minus-sign'></span></button> </li>";
                featureStr += "<li class='list-group-item'>";
                featureStr += "<ul class='list-group'>";
                for(index in features[prop]){
                    featureStr += "<li class='list-group-item'>"+features[prop][index];
                    featureStr += " <button class='btn btn-danger btn-xs pull-right' onclick='removeFeature(\""+prop+"\", "+index+")'><span class='glyphicon glyphicon-minus-sign'></span></button></li>";
                }
                featureStr += "<li class='list-group-item'><div class='input-group'>";
                featureStr += "<input type='text' class='form-control' placeholder='Enter Property Name in :"+prop+": '>";
                featureStr += "<span class='input-group-btn'>";
                featureStr += "<button class='btn btn-success' onClick=\"addFeature(this, '"+prop+"')\"><span class='glyphicon glyphicon-plus-sign'></span></button>";
                featureStr += "</span></div></li>";

                featureStr += "</ul></li></li>"
            }
            featureStr += "<li class='list-group-item'>";
            featureStr += "<div class='input-group'>";
            featureStr += "<input type='text' class='form-control' placeholder='Enter Group Name'>";
            featureStr += "<span class='input-group-btn'>";
            featureStr += "<button class='btn btn-success' onClick=\"addFeature(this, null)\" ><span class='glyphicon glyphicon-plus-sign'></span></button>";
            featureStr += "</span></div></li>";

            $('#features-info').html(featureStr);

        }

        function removeFeature(group, propIndex){

            if (propIndex == null){
                delete features[group];
            }else{
                delete features[group][propIndex];
            }
            renderTree();
        }

        function addFeature(addBtn, group){

            var txt = $(addBtn).parent().prev().val();
            if(txt != ''){
                if(group == null){
                    features[txt] = [];
                }else{
                    features[group].push(txt);
                }
                renderTree();

            }
        }

        renderTree();
    </g:javascript>
</body>
</html>