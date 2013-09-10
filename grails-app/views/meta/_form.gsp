<div class="form-group">
    <label for="name" class="col-md-2 control-label">Name</label>
    <div class="col-md-6">
        <input type="text" class="form-control" id="name" name="name" value="${meta?.name}" placeholder="Enter Meta Name" required="true">
    </div>
</div>
<div class="form-group">
    <label for="type" class="col-md-2 control-label">Type</label>
    <div class="col-md-6">
        <g:select name="type" from="${typeDD}" value="${meta?.type}"
                  noSelection="['':'-Choose Input Type-']" class="form-control"/>
    </div>
</div>
<div class="form-group">
    <label for="value" class="col-md-2 control-label">Value <small>only if type is SELECT</small></label>
    <div class="col-md-6">
        <input type="text" class="form-control" id="value" name="value" value="${meta?.value?.join(",")}" placeholder="Enter Meta Value">
    </div>
</div>
<div class="form-group">
    <label for="type" class="col-md-2 control-label">Unit</label>
    <div class="col-md-6">
        <input type="text" class="form-control" id="unit" name="unit" value="${meta?.unit}" placeholder="Enter Unit" required="true">
    </div>
</div>
<div class="form-group">
    <label for="input" class="col-md-2 control-label">Input</label>
    <div class="col-md-6">
        <g:checkBox name="input" id="input" value="${meta?.input}" class="form-control"></g:checkBox>
    </div>
</div>
<div class="form-group">
    <label for="sort" class="col-md-2 control-label">Sort</label>
    <div class="col-md-6">
        <g:checkBox name="sort" id="sort" value="${meta?.sort}" class="form-control"></g:checkBox>
    </div>
</div>
<div class="form-group">
    <label for="filter" class="col-md-2 control-label">Filter</label>
    <div class="col-md-6">
        <g:checkBox name="filter" id="filter" value="${meta?.filter}" class="form-control"></g:checkBox>
    </div>
</div>
