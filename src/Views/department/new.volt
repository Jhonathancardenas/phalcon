<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("department", "Go Back") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Create department</h1>
</div>

{{ content() }}

<form action="department/create" class="form-horizontal" method="post">
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
            {{ submit_button('Save', 'class': 'btn btn-default') }}
        </div>
    </div>
</form>
