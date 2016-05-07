{% include 'panelBase.volt' %}
<a href="/"><button type="button" class="btn btn-success" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
        <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</button></a>
<h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Scores:</b></h1>
<p class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">Events will be shown here when they are completed and a score has been submitted</p>

<br>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <table class=table style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <thead>
            <tr>
                <th>Event</th>
                <th>{{ team1 }}</th>
                <th>{{ team2 }}</th>
                <th>Points</th>

            </tr>
            </thead>
            <tbody>

            {% for event in events %}
                {% if event.score1 == null %}
                    {% continue %}
                {% endif %}
                <tr>
                    <td><a href="/events/{{ event.id }}">{{ event.name }}</a></td>
                    <td>{{ event.score1 }}</td>
                    <td>{{ event.score2 }}</td>
                    <td>{{ event.points }}</td>
                </tr>
            {% endfor %}

            </tbody>
        </table>
    </div>
</div>
