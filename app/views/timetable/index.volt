{% include 'panelBase.volt' %}
<a href="/"><button type="button" class="btn btn-success" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
        <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</button></a>
<h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Timetable</b></h1>
<br>

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <table class=table style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <thead>
            <tr>
                <th>Event</th>
                <th>Time</th>
                <th>Location</th>
                <th>Points</th>
            </tr>
            </thead>
            <tbody>

            {% for event in events %}
                <tr>
                    <td><a href="/events/{{ event.id }}">{{ event.name }}</a></td>
                    <td>{{ event.friendlyTime }}</td>
                    <td>{{ event.location }}</td>
                    <td>{{ event.points }}</td>

                </tr>
            {% endfor %}

            </tbody>
        </table>
    </div>
</div>