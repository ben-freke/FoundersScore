{% include 'panelBase.volt' %}
<style>

    .form-control{
        font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;
    }

    .loginForm {

        display: flex;
        align-items: center;

        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        margin: auto;
    }
</style>
<div class="loginForm">
        <div class="col-md-4 col-md-offset-4">
            <h1 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Founders Control Page</b></h1>
            <br>
            <div class="col-md-12">
                <div class="text-center">
                    <form method="post" action="/control">
                    <input type="text" name="email" class="form-control" placeholder="Email Address">
                    <br>
                    <input type="password" name="password" class="form-control" placeholder="Password">
                    <br>
                    <button type="submit" class="btn btn-success">Login</button>
                    </form>
                </div>
            </div>
            <br>
        </div>
</div>

