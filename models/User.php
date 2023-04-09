<?php

namespace models;

use Core\App;
use Core\Database;

class User
{
    private $email;
    private $password;
    private $name;
    private $role;
    private $avatar;

    public function __construct($email, $password, $name, $role, $avatar='')
    {
      $this->email = $email;   
      $this->password = $password;   
      $this->name = $name;   
      $this->role = $role;   
      $this->avatar = $avatar;   
    }

    public static function findById($email)
    {
      $db = App::resolve(Database::class);
      // find the corresponding note
      $user = $db->query('select * from users where email = :email', [
          'email' => $email
      ])->find();
      return $user;
    }

    // save a user to the database
    public function save()
    {
        $db = App::resolve(Database::class);
        $db->query('INSERT INTO user (email, password, name, role, avatar) VALUES (:email, :password, :name, :role, :avatar)', [
            'email' => $this->email,
            'password' => $this->password,
            'name' => $this->name,
            'role' => $this->role,
            'avatar' => $this->avatar,
        ]);
    }

    public function update()
    {
        $db = App::resolve(Database::class);
        $db->query('UPDATE user SET password = :password, name = :name, role = :role, avatar = :avatar WHERE email = :email', [
            'password' =>  $this->password,
            'name' => $this->name,
            'role' =>  $this->role,
            'avatar' => $this->avatar,
            'email' => $this->email,
        ]);
    }

    public function delete()
    {
        $db = App::resolve(Database::class);
        $db->query('DELETE FROM users WHERE email = :email', ['email' => $this->email]);
    }

    public static function all()
    {
        $db = App::resolve(Database::class);
        $users = $db->query('SELECT * FROM users')->fetchAll();
        return array_map(function($user) {
            return new User($user['email'], $user['password'], $user['name'], $user['role'], $user['avatar']);
        }, $users);
    }

    public function __toString(){
      return "User[$this->email, $this->name, $this->role, $this->avatar]";
    }

}
