{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-2 col-md-offset-5" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Add User</b></h3>
        <br>
        <form method="post" action="/control/adduser">
            <input type="text" name="firstName" class="form-control" placeholder="First Name">
            <br>
            <input type="text" name="lastName" class="form-control" placeholder="Last Name">
            <br>
            <input type="text" name="emailAddress" class="form-control" placeholder="Email Address">
            <br>
            <input type="text" name="newPassword" class="form-control" placeholder="New Password">
            <br>
            <div class="form-group">
                <select class="form-control" name="level">
                    <option>Standard</option>
                    <option>Administrator</option>
                </select>
            </div>
            <br>
            <div class="text-center"><button type="submit" class="btn btn-success">Add</button></div>
        </form>
    </div>
</div>