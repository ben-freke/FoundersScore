{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="col-md-2 col-md-offset-3">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Quick Actions</b></div>
            <div class="panel-body text-center">
                <div style="padding-bottom: 10px"><a href="/bigscreen/"><button type="button" class="btn btn-danger">Big Screen</button></a></div>
                {% if admin is defined %}<div style="padding-bottom: 10px"><a href="/control/addevent/"><button type="button" class="btn btn-info">Add Event</button></a></div>{% endif %}
                {% if admin is defined %}<div style="padding-bottom: 10px"><a href="/control/adduser/"><button type="button" class="btn btn-info">Add User</button></a></div>{% endif %}
                <div style="padding-bottom: 10px"><a href="/control/addpost/"><button type="button" class="btn btn-info">Add Post</button></a></div>

            </div>
        </div>
    </div>
    <div class="col-md-2">
        <div class="panel panel-success">
            <div class="panel-heading"><b>Statistics</b></div>
            <div class="panel-body">
               <i>Site Stats Coming Soon</i>
            </div>
        </div>
    </div>
    <div class="col-md-2">
        <div class="panel panel-warning">
            <div class="panel-heading"><b>Upcoming Sports</b></div>
            <div class="panel-body">
                There are no upcoming sports in the next two hours
            </div>
        </div>
    </div>
</div>

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-danger">
            <div class="panel-heading"><b>Help with this site</b></div>
            <div class="panel-body">
                This site is simple to use. At the top of this page, you have three options:
                <p></p>
                <ol>
                    <li><b>Events</b> - here, you can add and edit events, as well as adding a score to an existing event</li>
                    <li><b>Blogging</b> - here, you can add live updates to be pushed out across the pages, as well as edit existing posts</li>
                    <li><b>Users</b> - only administrators have access to this page, but you can add or remove users, as well as reset their password</li>
                </ol>
                <br>
                <h4>Adding an Event</h4>
                <p>To add an event, click the Events button in the navigation bar and then click "Add Event", or choose the "Add Event" button on the Quick Actions pane.
                Once there, simply enter all the information into the site and submit. It will automatically redirect to the same page again to allow you to add more events in bulk.</p><br>
                <h4>Adding a Score to an Event</h4>
                <p>To add an score, click on Events and find the event and click "Edit". At the bottom of the "Edit" form, two fields appear side by side (or underneath one another on a mobile device.
                    Each form is labeled with the team that it represents. Enter the respective team scores and press "Save". <b style="color: red">Note:</b> you should not enter a score if the match has taken place,
                    even a score of "0-0" as this will register as a completed event and will save, allocating the points respectively.
                </p><br>
                <h4>Adding a Live Update</h4>
                <p>You can add a live update to the site, which will be propagated around all screens displaying the content. To do this, either click the "Blogging" button in the navigation bar
                    and then click "Add Post", or click the "Add Post" button on the "Quick Actions" pane. Fill in the "Title" and "Content" fields and press "Add". You will be redirected to the "Add" page again to allow you to post multiple updates.
                </p><br>
                <h4>Problem?</h4>
                <p>If there's a problem with the site, please contact <b>Ben</b> on <a href="https://www.facebook.com/ben.freke">Facebook</a> or 07581436445 in an emergency (i.e. the site is down or being hacked).
                </p><br>
            </div>
        </div>
    </div>
</div>