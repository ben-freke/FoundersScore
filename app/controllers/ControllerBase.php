<?php

class ControllerBase extends \Phalcon\Mvc\Controller
{
    protected function getTeamName($id)
    {
        $team = teams::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array ('idVal' => $id)
        ));

        if ($team) return $team->name;
        return false;
    }

    protected function getUserType($id)
    {

    }

    protected function isAdmin($id)
    {
        $user = users::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));
        if ($user->level == 1) return true;
        return false;
    }

    protected function getScore(){
        $events = events::find();
        $team[1] = 0;
        $team[2] = 0;
        $team[3] = 0;
        foreach ($events as $event)
        {
            $team[3] = $team[3] + $event->points;
            if ($event->score1 == null && $event->score2 == null) continue;
            if ($event->score1 > $event->score2) $team[1] = $team[1] + $event->points;
            else if ($event->score1 < $event->score2) $team[2] = $team[2] + $event->points;
            else if ($event->score1 == $event->score2){
                $team[1] = $team[1] + ($event->points)/2;
                $team[2] = $team[2] + ($event->points)/2;
            }

        }
        return $team;
    }

}