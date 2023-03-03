<?php

class User {
    
    public $id;
    public $email;
    public $password;
    
    public function save() {
        $pdo = Database::getInstance();
        if ($this->id) {
            $stmt = $pdo->prepare('UPDATE users SET email = ?, password = ? WHERE id = ?');
            $stmt->execute([$this->email, $this->password, $this->id]);
        } else {
            $stmt = $pdo->prepare('INSERT INTO users (email, password) VALUES (?, ?)');
            $stmt->execute([$this->email, $this->password]);
            $this->id = $pdo->lastInsertId();
        }
    }
    
    public static function findById($id) {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare('SELECT * FROM users WHERE id = ?');
        $stmt->execute([$id]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $user = new User();
            $user->id = $row['id'];
            $user->email = $row['email'];
            $user->password = $row['password'];
            return $user;
        } else {
            return null;
        }
    }
    
    public static function findByEmail($email) {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare('SELECT * FROM users WHERE email = ?');
        $stmt->execute([$email]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $user = new User();
            $user->id = $row['id'];
            $user->email = $row['email'];
            $user->password = $row['password'];
            return $user;
        } else {
            return null;
        }
    }
    
}
