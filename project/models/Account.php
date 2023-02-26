<?php

namespace Project\Models;
use Core\Model;

class Account extends Model
{
    public function getAccount($post) {
        $params  = [
            'login'=>$post['login'],
            'password'=>$post['password']
        ];
        return $this->db->row("SELECT * FROM users WHERE login=:login AND password =:password",$params);
    }
}
