<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("Jhonatan/index", "Go Back") }}</li>
            <li class="next">{{ link_to("Jhonatan/new", "Create ") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search result</h1>
</div>

{{ content() }}

<div class="row">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
            <th>Descripcion</th>
            <th>Precio</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
        {% for jhonatan in page.items %}
            <tr>
                <td>{{ jhonatan.getId() }}</td>
            <td>{{ jhonatan.getDescripcion() }}</td>
            <td>{{ jhonatan.getPrecio() }}</td>

                <td>{{ link_to("Jhonatan/edit/"~jhonatan.getId(), "Edit") }}</td>
                <td>{{ link_to("Jhonatan/delete/"~jhonatan.getId(), "Delete") }}</td>
            </tr>
        {% endfor %}
        {% endif %}
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
            {{ page.current~"/"~page.total_pages }}
        </p>
    </div>
    <div class="col-sm-11">
        <nav>
            <ul class="pagination">
                <li>{{ link_to("Jhonatan/search", "First", false, "class": "page-link") }}</li>
                <li>{{ link_to("Jhonatan/search?page="~page.before, "Previous", false, "class": "page-link") }}</li>
                <li>{{ link_to("Jhonatan/search?page="~page.next, "Next", false, "class": "page-link") }}</li>
                <li>{{ link_to("Jhonatan/search?page="~page.last, "Last", false, "class": "page-link") }}</li>
            </ul>
        </nav>
    </div>
</div>
