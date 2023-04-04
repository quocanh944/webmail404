<?php

use Core\App;
use Core\Database;
use models\Inbox;

if (!isset($_SESSION['user'])) {
    header('location: /login');
    die();
}

if ($_SESSION['user']['role'] == 'user') {
    $db = App::resolve(Database::class);
    $email = $_SESSION['user']['email'];
    $user = $db->query('select * from user where email = :email', [
        'email' => $email
    ])->find();

    $page = isset($_GET['page']) ? $_GET['page'] - 1 : 0;
    $pageSize = isset($_GET['pageSize']) ? $_GET['pageSize'] : 20;

    if ($page < 0) {
        $page = 0;
    }

    if ($pageSize > 20 || $pageSize < 10) {
        $pageSize = 20;
    }

    ["allMails" => $all_mails, "count" => $count] = Inbox::getInboxMail($email, $page, $pageSize);
    
    view("index.view.php", [
        'all_mails' => $all_mails,
        'user' => $user,
        'page' => $page,
        'pageSize' => $pageSize,
        'count' => $count
    ]);
} else {
    header('location: /admin');
}