{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="col-md-6 col-md-offset-3">
        <div class="text-center">
            <a href="/control/addevent/"><button type="button" class="btn btn-success">Add Event</button></a>

        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <table class=table style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <thead>
            <tr>
                <th>Event</th>
                <th>Time</th>
                <th>Location</th>
                <th>Points</th>
                <th></th>

            </tr>
            </thead>
            <tbody>

            {% for event in events %}
                <tr>
                    <td><a href="/events/{{ event.id }}">{{ event.name }}</a></td>
                    <td>{{ event.friendlyTime }}</td>
                    <td>{{ event.location }}</td>
                    <td>{{ event.points }}</td>
                    <td>
                        <a href="/control/editevent/{{ event.id }}/"><button type="button" class="btn btn-primary">Edit</button></a>
                        <a href="/control/deleteevent/{{ event.id }}/"><button type="button" class="btn btn-danger">Delete</button></a>

                    </td>
                </tr>
            {% endfor %}

            </tbody>
        </table>
    </div>
</div>