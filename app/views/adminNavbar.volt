
<nav class="navbar navbar-default" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/control">Founders 2018 Control</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/control/viewevents">Events</a></li>
                <li><a href="/control/blog">Blogging</a></li>
                {% if admin == true %}
                <li><a href="/control/users">Users</a></li>
                {% endif %}
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ fullName }} <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/control/changepassword">Change Password</a></li>
                        <li><a href="/control/logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

{%  if msg is defined %}
    {% if msg == 1 %}
        <div class="row" id="success" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <div class="col-md-4 col-md-offset-4">
                <div class="alert alert-success text-center" role="alert"><b>Hazzah! That's worked.</b></div>
            </div>
        </div>
    {% endif %}
    {% if msg == 2 %}
        <div class="row" id="error" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <div class="col-md-4 col-md-offset-4">
                <div class="alert alert-danger text-center" role="alert"><b>Oh dear! That's not worked. Are you missing something?</b></div>
            </div>
        </div>
    {% endif %}
    {% if msg == 3 %}
        <div class="row" id="missing" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
            <div class="col-md-4 col-md-offset-4">
                <div class="alert alert-warning text-center" role="alert"><b>Dudeee! You're missing some info.</b></div>
            </div>
        </div>
    {% endif %}
{% endif %}

