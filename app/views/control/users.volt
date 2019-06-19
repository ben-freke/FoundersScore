{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="col-md-6 col-md-offset-3">
        <div class="text-center">
            <a href="/control/adduser/"><button type="button" class="btn btn-success">Add User</button></a>

        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <table class=table style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <thead>
            <tr>
                <th>Full Name</th>
                <th>Email Address</th>
                <th>Access</th>
                <th>Last Login</th>
                <th></th>

            </tr>
            </thead>
            <tbody>

            {% for user in users %}
                <tr>
                    <td>{{ user.firstName }} {{ user.lastName }}</td>
                    <td>{{ user.emailAddress }}</td>
                    <td>{{ user.friendlyLevel }}</td>
                    <td>{{ user.friendlyTime }}</td>
                    <td>
                        <a href="/control/edituser/{{ user.id }}/"><button type="button" class="btn btn-primary">Edit</button></a>
                        <a href="/control/deleteuser/{{ user.id }}/"><button type="button" class="btn btn-danger">Delete</button></a>

                    </td>
                </tr>
            {% endfor %}

            </tbody>
        </table>
    </div>
</div>