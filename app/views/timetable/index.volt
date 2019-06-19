{% extends 'base.volt' %}

{% block body %}

    <section id="one" class="wrapper style1">
        <header class="major">
            <h2>Event Timetable</h2>
            <br>
            <p><span style="color:green">Green</span> text indicates today's events</p>
        </header>
        <div class="container">

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
                    {% if event.today === 1 %}<tr style="color:green" id="today">
                    {% else %}<tr>{% endif %}
                    <td>{{ event.name }}</td>
                    <td>{{ event.friendlyTime }}</td>
                    <td>{{ event.location }}</td>
                    <td>{{ event.points }}</td>
                    </tr>
                {% endfor %}

                </tbody>
            </table>
        </div>
    </section>



{% endblock %}