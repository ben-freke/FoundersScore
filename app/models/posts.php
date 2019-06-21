<?php


class posts extends Phalcon\Mvc\Model
{
    public $id;
    public $userID;
    public $title;
    public $body;
    public $timestamp;
    public $friendlyTime;
    public $authorName;
    public $listTime;


    public function initialize()
    {
    }
    public function beforeSave()
    {
    }
    public function afterFetch()
    {
        $this->friendlyTime = date('D G:i', strtotime($this->timestamp) + 3600);
        $this->listTime = date('l G:i', strtotime($this->timestamp));

        $user = users::findFirst(array("conditions" => "id = " . $this->userID));
        $this->authorName = $user->firstName . " " . $user->lastName;
    }

}