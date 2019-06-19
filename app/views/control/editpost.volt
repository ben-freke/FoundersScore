{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-4 col-md-offset-4" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Add Post</b></h3>
        <br>
        <form method="post" action="/control/editpost/{{ post.id }}">
            <input type="text" name="title" class="form-control" value="{{ post.title }}">
            <br>
            <textarea rows="6" name="body" class="form-control">{{ post.body }}</textarea>
            <br>
            <div class="text-center"><button type="submit" class="btn btn-success">Save</button></div>
        </form>
    </div>
</div>