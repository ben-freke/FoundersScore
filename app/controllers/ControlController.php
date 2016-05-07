<?php

class ControlController extends ControllerBase
{
    public function initialize(){
        $user = users::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $this->session->get("userid"))
        ));
        if ($user)
        {
            $username = $user->firstName . " ". $user->lastName;
            $this->view->setVar("fullName", $username);
            if ($user->level == 1){
                $this->view->setVar("admin", true);
                $admin = true;

            }

            else $this->view->setVar("admin", false);
        } else if ($_SERVER['REQUEST_URI'] != "/control") {
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control", true);
            $response->send();
        }

    }

    public function indexAction()
    {
        \Phalcon\Tag::setTitle('Login');
        $response = new \Phalcon\Http\Response();
        if ($this->session->has("userid")) {
            $response->redirect("/control/dashboard/", true);

        }
        $input = file_get_contents("php://input");
        $request = new \Phalcon\Http\Request();
        if ($request->isPost())
        {
            $user = users::findFirst(array(
               "conditions" => "emailAddress = :email: AND password = :passVal:",
                "bind" => array("email" =>  $request->get("email"), "passVal" => base64_encode(hash('sha512', $request->get("password"))))
            ));
            if ($user){
                date_default_timezone_set('Europe/London');
                $date = new DateTime();
                $date->format('Y-m-d H:i:s');
                $user->lastLogin = $date->format('Y-m-d H:i:s');
                $user->save();
                $this->session->set("userid", $user->id);
                $response->redirect("/control/dashboard/", true);
            } else {
                $response->redirect("/control/", true);
            }
        }
        $response->send();
    }

    public function dashboardAction()
    {
        \Phalcon\Tag::setTitle('Dashboard');
    }

    /**
     * Event Functions
     */

    public function addeventAction(){
        \Phalcon\Tag::setTitle('Add Event');
        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $event = new events();
            $event->name = $request->get("name");
            $event->location = $request->get("location");
            $event->time = date("Y-m-d H:i:s", strtotime($request->get("datetime")));
            $event->points = $request->get("points");
            $event->save();
        }
    }

    public function editeventAction($id)
    {
        \Phalcon\Tag::setTitle('Edit Event');

        $event = events::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));
        $this->view->setVar("event", $event);
        $this->view->setVar("team1", $this->getTeamName(1));
        $this->view->setVar("team2", $this->getTeamName(2));

        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $event->name = $request->get("name");
            $event->location = $request->get("location");
            $event->time = date("Y-m-d H:i:s", strtotime($request->get("datetime")));
            $event->points = $request->get("points");
            $score1 = $request->get("score1");
            $score2 = $request->get("score2");
            if ($score1 == "") $score1 = null;
            if ($score2 == "") $score2 = null;
            $event->score1 = $score1;
            $event->score2 = $score2;
            $event->save();
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control/viewevents", true);
            $response->send();
        }

    }

    public function deleteeventAction($id)
    {
        $event = events::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));

        if ($event) $event->delete();
        $response = new \Phalcon\Http\Response();
        $response->redirect("/control/viewevents", true);
        $response->send();
    }

    public function vieweventsAction()
    {
        \Phalcon\Tag::setTitle('Events');
        $this->view->setVar('team1', $this->getTeamName(1));
        $this->view->setVar('team2', $this->getTeamName(2));
        $events = events::find(array("order" => "time ASC"));
        $this->view->setVar('events', $events);
    }

    /**
     * Post Functions
     */

    public function deletepostAction($id)
    {
        $post = posts::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));

        if ($post) $post->delete();
        $response = new \Phalcon\Http\Response();
        $response->redirect("/control/blog", true);
        $response->send();
    }

    public function editpostAction($id){
        \Phalcon\Tag::setTitle('Edit Post');

        $post = posts::findFirst(
            array(
                "conditions" => "id = :idVal:",
                "bind" => array("idVal" => $id)
            )
        );
        $this->view->setVar("post", $post);

        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $post->title = $request->get("title");
            $post->body = $request->get("body");
            $post->userID = $this->session->get("userid");
            $post->save();
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control/blog", true);
            $response->send();
        }

    }

    public function addpostAction()
    {
        \Phalcon\Tag::setTitle('Add Post');

        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $post = new posts();
            $post->title = $request->get("title");
            $post->body = $request->get("body");
            $post->userID = $this->session->get("userid");
            $post->save();
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control/addpost", true);
            $response->send();
        }
    }

    public function blogAction()
    {
        \Phalcon\Tag::setTitle('Posts');
        $this->view->setVar('team1', $this->getTeamName(1));
        $this->view->setVar('team2', $this->getTeamName(2));
        $blogs = posts::find(array("order" => "timestamp DESC"));
        $this->view->setVar('blogs', $blogs);
    }

    /**
     * User Functions
     */

    public function usersAction(){
        \Phalcon\Tag::setTitle('Users');
        if ($this->isAdmin($this->session->get("userid")) == false){
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control", true);
            $response->send();
        }
        $users = users::find();
        $this->view->setVar('users', $users);
    }

    public function logoutAction()
    {
        $response = new \Phalcon\Http\Response();
        $this->session->destroy();
        $response->redirect("/control", true);
        $response->send();
    }

    public function adduserAction()
    {
        if (!$this->isAdmin($this->session->get("userid"))){
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control", true);
            $response->send();
        }
        \Phalcon\Tag::setTitle('Add User');
        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $user = new users();
            $user->firstName = $request->get("firstName");
            $user->lastName = $request->get("lastName");
            $user->emailAddress = $request->get("emailAddress");
            $user->password = base64_encode(hash('sha512', $request->get("newPassword")));
            if ($request->get("level") == "Administrator") $user->level = 1;
            else $user->level = 2;
            $user->save();
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control/users", true);
            $response->send();
        }
    }

    public function deleteuserAction($id)
    {
        if (!$this->isAdmin($this->session->get("userid"))){
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control", true);
            $response->send();
        }

        $user = users::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));

        if ($user) $user->delete();
        $response = new \Phalcon\Http\Response();
        $response->redirect("/control/users", true);
        $response->send();
    }

    public function editUserAction($id)
    {
        if (!$this->isAdmin($this->session->get("userid"))){
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control", true);
            $response->send();
        }

        \Phalcon\Tag::setTitle('Edit User');

        $user = users::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $id)
        ));
        $this->view->setVar("user", $user);
        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            $user->firstName = $request->get("firstName");
            $user->lastName = $request->get("lastName");
            $user->emailAddress = $request->get("emailAddress");
            $newPassword =  $request->get("newPassword");
            if ($newPassword != "") $user->password = base64_encode(hash('sha512', $request->get("newPassword")));
            if ($request->get("level") == "Administrator") $user->level = 1;
            else $user->level = 2;
            $user->save();
            $response = new \Phalcon\Http\Response();
            $response->redirect("/control/users", true);
            $response->send();
        }
    }

    public function changepasswordAction()
    {
        \Phalcon\Tag::setTitle('Change Password');

        $user = users::findFirst(array(
            "conditions" => "id = :idVal:",
            "bind" => array("idVal" => $this->session->get("userid"))
        ));
        if ($user) null;
        else return;
        $request = new \Phalcon\Http\Request();
        if ($request->isPost()){
            if ($user->password == base64_encode(hash('sha512', $request->get("currentPassword")))){
                $newPassword = $request->get("newPassword");
                if ($newPassword == $request->get("confirmPassword"))
                {
                    $user->password = base64_encode(hash('sha512', $request->get("newPassword")));
                    $user->save();
                    $response = new \Phalcon\Http\Response();
                    $response->redirect("/control/", true);
                    $response->send();
                }
            }
        }
    }



}


