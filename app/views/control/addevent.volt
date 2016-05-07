{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row">
    <div class="col-md-2 col-md-offset-5" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <h3 class="text-center" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;"><b>Add Event</b></h3>
        <br>
        <form method="post" action="/control/addevent">
           <input type="text" name="name" class="form-control" placeholder="Event Name">
           <br>
           <input type="text" name="location" class="form-control" placeholder="Location">
           <br>

           <div class='input-group date' id='datetimepicker1'>
               <input type='text' name="datetime" class="form-control" placeholder="Date and Time" />
               <span class="input-group-addon">
                   <span class="glyphicon glyphicon-calendar"></span>
               </span>
           </div>
           <script type="text/javascript">
               $(function () {
                   $('#datetimepicker1').datetimepicker();
               });
           </script>
           <br>
           <input type="text" name="points" class="form-control" placeholder="Points">
           <br>
           <div class="text-center"><button type="submit" class="btn btn-success">Add</button></div>
       </form>
    </div>
</div>