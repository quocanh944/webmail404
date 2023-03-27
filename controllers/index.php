<?php

use Core\App;
use Core\Database;

if (!isset($_SESSION['user'])) {
    header('location: /login');
    die();
}

$db = App::resolve(Database::class);
$email = $_SESSION['user']['email'];
$user = $db->query('select * from user where email = :email', [
    'email' => $email
])->find();

// dd($user_id);

$all_mails = $db->query('SELECT * FROM `inbox` INNER JOIN `mail` ON mail.id = mail_id WHERE inbox.user_id = :user_id', [
    'user_id' => $user['id']
])->get();

// dd($all_mails);

view("index.view.php", [
    'all_mails' => $all_mails,
    'user' => $user
]);
