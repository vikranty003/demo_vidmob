<div class="form-group">
    <label for="name" class="col-lg-2 control-label">Name</label>
    <div class="col-lg-10">
        <input type="text" class="form-control" id="name" name="name" value="${meta?.name}" placeholder="Enter Meta Name" required="true" pattern="[a-z0-9]+">
    </div>
</div>
<div class="form-group">
    <label for="type" class="col-lg-2 control-label">Type</label>
    <div class="col-lg-10">
        <g:select name="type" from="${typeDD}" value="${meta?.type}"
                  noSelection="['':'-Choose Input Type-']"/>
    </div>
</div>
<div class="form-group">
    <label for="value" class="col-lg-2 control-label">Value <small>only if type is SELECT</small></label>
    <div class="col-lg-10">
        <input type="text" class="form-control" id="value" name="value" value="${meta?.value}" placeholder="Enter Meta Value">
    </div>
</div>
<div class="form-group">
    <label for="input" class="col-lg-2 control-label">Input</label>
    <div class="col-lg-10">
        <g:checkBox name="input" id="input" value="${meta?.input}" class="form-control"></g:checkBox>
    </div>
</div>
<div class="form-group">
    <label for="sort" class="col-lg-2 control-label">Sort</label>
    <div class="col-lg-10">
        <g:checkBox name="sort" id="sort" value="${meta?.sort}" class="form-control"></g:checkBox>
    </div>
</div>
<div class="form-group">
    <label for="filter" class="col-lg-2 control-label">Filter</label>
    <div class="col-lg-10">
        <g:checkBox name="filter" id="filter" value="${meta?.filter}" class="form-control"></g:checkBox>
    </div>
</div>
