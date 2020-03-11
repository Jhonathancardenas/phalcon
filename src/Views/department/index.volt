<div class="page-header">
    <h1>Search department</h1>
    <p>{{ link_to("department/new", "Create department") }}</p>
</div>

{{ content() }}

<form action="department/search" class="form-horizontal" method="get">
    <div class="form-group">
    <label for="fieldDeptcode" class="col-sm-2 control-label">Deptcode</label>
    <div class="col-sm-10">
        {{ text_field("deptcode", "size" : 30, "class" : "form-control", "id" : "fieldDeptcode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldDeptname" class="col-sm-2 control-label">Deptname</label>
    <div class="col-sm-10">
        {{ text_field("deptname", "size" : 30, "class" : "form-control", "id" : "fieldDeptname") }}
    </div>
</div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            {{ submit_button('Search', 'class': 'btn btn-default') }}
        </div>
    </div>
</form>
