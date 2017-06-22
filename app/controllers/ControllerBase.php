<?php

class ControllerBase extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        $maxScore = 100;

        $score = $this->getScore();
        $this->view->setVar('score1', $score[1]);
        $this->view->setVar('score2', $score[2]);
        $this->view->setVar('totalAvailablePoints', $score[3]);
        $percentage1 = (($score[1] / $score[3]) * 100);
        $this->view->setVar('percentage1', $percentage1);
        $percentage2 = ($score[2] / $score[3]) * 100;
        $this->view->setVar('percentage2', $percentage2);
    }


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

    protected function checkWinner()
    {
        $won = posts::findFirst(array(
            "conditions" => "title = :val:",
            "bind" => array("val" => "Winners of Founders 2016")
        ));
        if ($won) return;
        $score = $this->getScore();
        $threshold = $score[3] / 2;

        if ($score[1] > $threshold){
            $this->putPost('Winners of Founders ' . date("Y"), $this->getTeamName(1) . ' have won Founders ' . date("Y") . ' after exceeding the 41 point threshold.');
        }
        else if ($score[2] > $threshold)
        {
            $this->putPost('Winners of Founders ' . date("Y"), $this->getTeamName(2) . ' have won Founders ' . date("Y") . ' after exceeding the 41 point threshold.');
        }
    }

    protected function putPost($title, $content)
    {
        $post = new posts();
        $post->title = $title;
        $post->body = $content;
        $post->userID = $this->session->get("userid");
        $post->save();
    }

}