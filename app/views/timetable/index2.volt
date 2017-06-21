{% include 'panelBase.volt' %}
<a href="/"><button type="button" class="btn btn-success" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
        <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back</button></a>
<h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Timetable</b></h1>
<br>

<div class="row" id="timetableDiv" style="overflow:scroll; overflow-x: hidden; height:500px;">
    <div class="col-md-6 col-md-offset-3">
        <p><span style="color:green">Green</span> text indicates today's events</p>
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
</div>

<script>
    document.onload = doScroll();
    function doScroll(){
        var rowpos = $('#today').position();
        console.log(rowpos);
        $('#timetableDiv').scrollTop(rowpos.top);
    }

</script>