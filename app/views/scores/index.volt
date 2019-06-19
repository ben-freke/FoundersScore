{% extends 'base.volt' %}

{% block body %}

    <section id="one" class="wrapper style1">
        <header class="major">
            <h2>Event Scores</h2>
            <br>
            <p>Scores will be displayed here as they arrive. Scores will be coloured depending on the winning team. For a list of events, click <a href="/timetable">here</a>.</p>
        </header>
        <div class="container">
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
                    {% if event.score1 > event.score2 %}<tr style="color: #ae0000;">
                    {% elseif event.score2 > event.score1 %}<tr style="color: #007fe0;">
                    {% else %}<tr>{% endif %}
                    <td>{{ event.name }}</td>
                    <td>{{ event.score1 }}</td>
                    <td>{{ event.score2 }}</td>
                    <td>{{ event.points }}</td>
                    </tr>
                {% endfor %}
                </tbody>
            </table>
        </div>
    </section>



{% endblock %}