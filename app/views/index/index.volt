{% extends 'base.volt' %}

{% block metadata %}
    <meta property="og:url"               content="https://www.lancasterfounders.com/" />
    <meta property="og:type"              content="website" />
    <meta property="og:title"             content="Lancaster Founders 2017" />
    <meta property="og:description"       content="The official scoreboard and timetable for the Lancaster Founders 2017 series." />
    <meta property="og:image"             content="/images/preview_photo.jpg" />
    {% endblock %}

{% block body %}

    <!-- One -->
    <section id="one" class="wrapper style1">
        <header class="major">
            <h2>Undergrounders-Live</h2>
            <br>
            <p>Live updates from the pitch:</p>
        </header>
        <div class="container">

        {% for update in updates %}

            <div class="row">
                <div class="12u">
                    <section class="special box">
                            <h3>{{ update['title'] }}</h3>
                            <p><b>{{ update['time'] }}:</b> {{ update['body'] }}</p>
                    </section>
                </div>
            </div>

        {% endfor %}
        </div>
    </section>

    <!-- Two -->
    <section id="two" class="wrapper style2">
        <header class="major">
            <h2>Find out more</h2>
        </header>
        <div class="container">
            <div class="row">
                <div class="6u">
                    <section class="special">
                        <a href="#" class="image fit"><img src="images/football.jpg" alt="" /></a>
                        <h3>Event Scores</h3>
                        <p>Find out all the events still to come: their times and locations.</p>
                        <ul class="actions">
                            <li><a href="/timetable" class="button alt">Events</a></li>
                        </ul>
                    </section>
                </div>
                <div class="6u">
                    <section class="special">
                        <a href="#" class="image fit"><img src="images/football2.jpg" alt="" /></a>
                        <h3>Timetable</h3>
                        <p>View the results for every event that's taken place so far.</p>
                        <ul class="actions">
                            <li><a href="/scores" class="button alt">Scores</a></li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </section>

{% endblock %}