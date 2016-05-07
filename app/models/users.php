<?php


class users extends Phalcon\Mvc\Model
{
    public $id;
    public $firstName;
    public $lastName;
    public $emailAddress;
    public $level;
    public $password;
    public $lastLogin;

    public $friendlyLevel;
    public $friendlyTime;


    public function initialize()
    {
    }
    public function beforeSave()
    {
    }
    public function afterFetch()
    {
        if ($this->level == 1) $this->friendlyLevel = "Administrator";
        else $this->friendlyLevel = "Standard";
        $this->friendlyTime = date('l G:i', strtotime($this->lastLogin));
    }

}