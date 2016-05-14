{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-4 col-md-offset-4" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Add Post</b></h3>
        <br>
        <form method="post" action="/control/addpost">
            <input type="text" name="title" class="form-control" placeholder="Title">
            <br>
            <textarea rows="6" name="body" class="form-control" placeholder="Content"></textarea>
            <br>
            <div class="text-center"><button type="submit" class="btn btn-success">Add</button></div>
        </form>
    </div>
</div>