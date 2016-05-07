{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-2 col-md-offset-5" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Change Your Password</b></h3>
        <br>
        <form method="post" action="/control/changepassword">
            <input type="password" name="currentPassword" class="form-control" placeholder="Current Password">
            <br>
            <input type="password" name="newPassword" class="form-control" placeholder="New Password">
            <br>
            <input type="password" name="confirmPassword" class="form-control" placeholder="Confirm New Password">
            <br>
            <div class="text-center"><button type="submit" class="btn btn-success">Change Password</button></div>
        </form>
    </div>
</div>