<?php

use Core\App;
use Core\Database;
use models\Inbox;

if ($_SESSION['user']['role'] == 'user') {
    $db = App::resolve(Database::class);
    $email = $_SESSION['user']['email'];
    $id = $_GET['id'] + 0;

    $mail = $db->query("select mail.* from mail, inbox where inbox.email = :email AND mail.id = $id", [
        'email' => $email
    ])->findOrFail();
    
    // dd($mail);
    
    view("mail.view.php", [
        'mail' => $mail
    ]);
} else {
    header('location: /admin');
}