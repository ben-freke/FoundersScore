<?php

class BigscreenController extends ControllerBase
{


    public function indexAction()
    {
        \Phalcon\Tag::setTitle('Founders 2016 Series');
        $imgNo = rand(1, 18);
        $imgNo < 10 ? $imgNo = "0" . $imgNo : null;
        $this->view->setVar("imgNo", $imgNo);
        $team1 = teams::findFirst(array(
            "conditions" => "id = 1"
        ));
        $team2 = teams::findFirst(array(
            "conditions" => "id = 2"
        ));
        $score = $this->getScore();
        $this->view->setVar('score1', $score[1]);
        $this->view->setVar('score2', $score[2]);

        $updates = posts::find(array("order" => "timestamp DESC"));
        $data = array();
        foreach ($updates as $update)
        {
            $d = array();
            $d['title'] = $update->title;
            $d['body'] = $update->body;
            $d['time'] = $update->timestamp;
            array_push($data, $d);
        }

        $this->view->setVar('updates', $updates);

    }

    public function bigscreenAction()
    {

    }

}

