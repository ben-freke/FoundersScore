<?php

class TimetableController extends ControllerBase
{

    public function indexAction()
    {
        $this->view->setVar('team1', $this->getTeamName(1));
        $this->view->setVar('team2', $this->getTeamName(2));
        $events = events::find(array("order" => "time ASC"));
        $this->view->setVar('events', $events);
    }

}

