<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
    if ($_SERVER['REQUEST_METHOD'] == 'GET'){
        $db = App::resolve(Database::class);
        $settings = $db->query('SELECT * FROM settings WHERE id = :id', [
            'id' => 1
        ])->find();
          
        view("admin/index.view.php", [
            'settings' => $settings,
        ]);
    }
} else {
    header('location: /user-list');
}

