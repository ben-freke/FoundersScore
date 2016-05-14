{% include 'panelBase.volt' %}
{% include 'adminNavbar.volt' %}

<div class="row" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif; text-transform: uppercase;">
    <h3 class="text-center" ><b>Edit {{ event.name }}</b></h3>
    <form method="post" action="/control/editevent/{{ event.id }}">
    <div class="col-md-4 col-md-offset-4" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <br>
           <input type="text" name="name" class="form-control" value="{{ event.name }}">
           <br>
           <input type="text" name="location" class="form-control" value="{{ event.location }}">
           <br>

           <div class='input-group date' id='datetimepicker1'>
               <input type='text' name="datetime" class="form-control" value="{{ event.editTime }}" />
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
           <input type="text" name="points" class="form-control" value="{{ event.points }}">
            <br>
    </div>
        <div class="col-md-2 col-md-offset-4">
        <input type="text" name="score1" class="form-control"
               {% if event.score1 == null %}
                   placeholder="{{ team1 }}"
               {% else %}
                   value="{{ event.score1 }}"
               {% endif %}
               >
            <br>

        </div>
    <div class="col-md-2">
        <input type="text" name="score2" class="form-control"
                {% if event.score1 == null %}
                    placeholder="{{ team2 }}"
                {% else %}
                    value="{{ event.score2 }}"
                {% endif %}
                >
        <br>
    </div>
    <div class="col-md-2 col-md-offset-5" style="font-family: 'Montserrat', 'Helvetica Neue', 'Helvetica', sans-serif;" >
        <div class="text-center"><button type="submit" class="btn btn-success">Save</button></div>
    </div>
    </form>
</div>