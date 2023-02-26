<?php

namespace Project\Controllers;
use Core\Controller;
use Project\Models\Account;


class AccountController extends Controller
{
    public function index(){
        $this->title='Авторизация';
        return $this->render('account/index');

    }

    public function login() {
        $user = (new Account)->getAccount($_POST);

        if($user) {
            $_SESSION['auth'] = true;
            $_SESSION['login'] = $_POST['login'];

            $this->redirect('');

        }else {
             $this->redirect('account/index');
        }

    }

    public function logout() {
        unset($_SESSION['auth']);
        unset($_SESSION['login']);
        $this->redirect('account/index');
    }

}