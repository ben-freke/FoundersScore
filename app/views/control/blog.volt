{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="col-md-6 col-md-offset-3">
        <div class="text-center">
            <a href="/control/addpost/"><button type="button" class="btn btn-success">Add Post</button></a>
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <table class=table style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <thead>
            <tr>
                <th>Author</th>
                <th>Title</th>
                <th>Content</th>
                <th>Time</th>
                <th></th>
            </tr>
            </thead>
            <tbody>

            {% for blog in blogs %}
                <tr>
                    <td>{{ blog.authorName }}</td>
                    <td>{{ blog.title }}</td>
                    <td>{{ blog.body }}</td>
                    <td>{{ blog.listTime }}</td>
                    <td>
                        {% if admin is defined %}<a href="/control/editpost/{{ blog.id }}/"><button type="button" class="btn btn-primary">Edit</button></a>{% endif %}
                        {% if admin is defined %}<a href="/control/deletepost/{{ blog.id }}/"><button type="button" class="btn btn-danger">Delete</button></a>{% endif %}

                    </td>
                </tr>
            {% endfor %}

            </tbody>
        </table>
    </div>
</div>