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
        $stmt = "SELECT * FROM users";
        $stmt_count = "SELECT COUNT(*) AS total_users FROM users";
        $allUsers = $db->query($stmt, [])->get();
        $count = $db->query($stmt_count, [])->get()[0]['total_users'];        
        return [
            "allUsers" => $allUsers,
            "count" => $count
        ];
    }

    public static function limit($pageSize = 10, $offset = 5)
    {
        $db = App::resolve(Database::class);
        $stmt = "SELECT * 
                FROM users
                ORDER BY CASE WHEN users.role = 'admin' THEN 1 ELSE 2 END, email ASC
                LIMIT " . $offset . " , $pageSize";
        $stmt_count = "SELECT COUNT(*) AS num_users FROM users LIMIT " . $pageSize . " , $offset";
        $users = $db->query($stmt, [])->get();
        $count = $db->query($stmt_count, [])->get();        
        return [
            "users" => $users,
            "count_limit" => $count
        ];
    }

    public function __toString(){
      return "User[$this->email, $this->name, $this->role, $this->avatar]";
    }

}
