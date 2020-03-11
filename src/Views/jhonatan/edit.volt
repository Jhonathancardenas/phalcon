ls<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("Jhonatan", "Go Back") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Edit Jhonatan</h1>
</div>

{{ content() }}

<form action="Jhonatan/save" class="form-horizontal" method="post">
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


    {{ hidden_field("id") }}

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            {{ submit_button('Send', 'class': 'btn btn-default') }}
        </div>
    </div>
</form>
