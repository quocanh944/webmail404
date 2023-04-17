<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
    if ($_SERVER['REQUEST_METHOD'] == 'GET'){
        $db = App::resolve(Database::class);
        $email = $_GET['id'];
        $user = $db->query('select * from users where email = :email', [
            'email' => $email
        ])->find();
    
        view("admin/user-edit.view.php", [
            'user' => $user,
        ]);
    }
} else {
    header('location: /user-list');
}

