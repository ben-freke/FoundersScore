<?php


class events extends Phalcon\Mvc\Model
{
    public $id;
    public $name;
    public $time;
    public $location;
    public $score1;
    public $score2;
    public $points;
    public $friendlyTime;
    public $editTime;
    public $today;


    public function initialize()
    {
    }
    public function beforeSave()
    {
    }
    public function afterFetch()
    {
        $this->friendlyTime = date('l G:i', strtotime($this->time));
        $this->editTime = date('m/d/Y G:i', strtotime($this->time));
        if (date("d.m.Y") == date('d.m.Y', strtotime($this->time))) $this->today = 1;
        else $this->today = 0;
    }
}