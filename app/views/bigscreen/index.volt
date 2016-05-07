{% include 'panelBase.volt' %}
<style>
    body {
        overflow: hidden;
        background:
        linear-gradient(
                rgba(0, 0, 0, 0.5),
                rgba(0, 0, 0, 0.5)
        ),
            url(/img/bks/{{ imgNo }}.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;


    }
</style>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; color: white; text-transform: uppercase;"><b>Live Scoreboard:</b></h1>
        <br>
        <div class="panel panel-default">
            <div class="panel-body">
                <h1 class="text-center" style="font-size: 100px; font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;"><span style="color: #ae0000;">{{ score1 }}</span> <span style="font-size: 30px">v</span> <span style="color: #007fe0;">{{ score2 }}</span></h1>
            </div>
        </div>
    </div>
</div>

<br>
    <h1 class="text-center" style="color: white; font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Live Updates:</b></h1>
<br>
<div class="row" style="overflow:hidden; height:500px; ">
{% for update in updates %}

    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>{{ update.title }}</b></div>
            <div class="panel-body">
                <p style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-align: justify; text-justify: inter-word;">
                    <b>{{ update.friendlyTime }}:</b> {{ update.body }}
                </p>
            </div>
        </div>
    </div>

{% endfor %}
</div>
<div class="col-md-12">
    <br>
    <div class="text-center" style=" color:white; font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;"><h3>infinitypx.com/founders</h3></div>
</div>
<meta http-equiv="refresh" content="10">

</body>
</html>