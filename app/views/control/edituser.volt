{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-4 col-md-offset-4" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Edit User</b></h3>
        <br>
        <form method="post" action="/control/edituser/{{ user.id }}">
            <input type="text" name="firstName" class="form-control" value="{{ user.firstName }}">
            <br>
            <input type="text" name="lastName" class="form-control" value="{{ user.lastName }}">
            <br>
            <input type="text" name="emailAddress" class="form-control" value="{{ user.emailAddress }}">
            <br>
            <input type="text" name="newPassword" class="form-control" placeholder="New Password">
            <br>
            <div class="form-group">
                <select class="form-control" name="level">
                    <option>Standard</option>
                    <option {% if user.level == 1 %}selected="selected"{% endif %}>Administrator</option>
                </select>
            </div>
            <br>
            <div class="text-center"><button type="submit" class="btn btn-success">Save</button></div>
        </form>
    </div>
</div>