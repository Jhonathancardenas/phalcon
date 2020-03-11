<div class="page-header">
    <h1>Search Jhonatan</h1>
    <p>{{ link_to("Jhonatan/new", "Create Jhonatan") }}</p>
</div>

{{ content() }}

<form action="Jhonatan/search" class="form-horizontal" method="get">
    <div class="form-group">
    <label for="fieldId" class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
        {{ text_field("id", "type" : "numeric", "class" : "form-control", "id" : "fieldId") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldDescripcion" class="col-sm-2 control-label">Descripcion</label>
    <div class="col-sm-10">
        {{ text_field("descripcion", "size" : 30, "class" : "form-control", "id" : "fieldDescripcion") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldPrecio" class="col-sm-2 control-label">Precio</label>
    <div class="col-sm-10">
        {{ text_field("precio", "size" : 30, "class" : "form-control", "id" : "fieldPrecio") }}
    </div>
</div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            {{ submit_button('Search', 'class': 'btn btn-default') }}
        </div>
    </div>
</form>
