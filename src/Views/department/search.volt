<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("department/index", "Go Back") }}</li>
            <li class="next">{{ link_to("department/new", "Create ") }}</li>
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
                <th>Deptcode</th>
            <th>Deptname</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
        {% for department in page.items %}
            <tr>
                <td>{{ department.getDeptcode() }}</td>
            <td>{{ department.getDeptname() }}</td>

                <td>{{ link_to("department/edit/"~department.getDeptcode(), "Edit") }}</td>
                <td>{{ link_to("department/delete/"~department.getDeptcode(), "Delete") }}</td>
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
                <li>{{ link_to("department/search", "First", false, "class": "page-link") }}</li>
                <li>{{ link_to("department/search?page="~page.before, "Previous", false, "class": "page-link") }}</li>
                <li>{{ link_to("department/search?page="~page.next, "Next", false, "class": "page-link") }}</li>
                <li>{{ link_to("department/search?page="~page.last, "Last", false, "class": "page-link") }}</li>
            </ul>
        </nav>
    </div>
</div>
