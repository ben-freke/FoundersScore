{% include 'panelBase.volt' %}
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Live Scoreboard:</b></h1>
        <br>
        <div class="panel panel-default">
            <div class="panel-body">
                <h1 class="text-center" style="font-size: 100px; font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;"><span class="counter" style="color: #ae0000;">{{ score1 }}</span> <span style="font-size: 30px">v</span> <span class="counter" style="color: #007fe0;">{{ score2 }}</span></h1>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="text-center">
            <a href="/scores/"><button type="button" class="btn btn-success" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">Event Scores</button></a>
            <a href="/timetable/"><button type="button" class="btn btn-danger" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">Weekend Timetable</button></a>
        </div>
    </div>
</div>

<br>
    <h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Live Updates:</b></h1>
<br>
<div class="row" style="overflow:scroll; overflow-x: hidden; max-height: 500px ">
{% for update in updates %}

    <div class="col-md-6 col-md-offset-3">
        {% if update.userID == 10 %}
            <div class="panel panel-danger">
        {% elseif update.userID == 11 %}
            <div class="panel panel-info">
        {% else %}
            <div class="panel panel-default">
        {% endif %}
            <div class="panel-heading"style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>{{ update.title }}</b></div>
            <div class="panel-body">
                <p style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-align: justify; text-justify: inter-word;">
                    <b>{{ update.friendlyTime }}:</b> {{ update.body }}
                </p>
            </div>
        </div>
    </div>

{% endfor %}
    <div class="col-md-12">
        <div class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;"><a href="#"><u><b>View All</b></u></a></div>
    </div>
</div>

</body>
</html>