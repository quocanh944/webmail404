<?php

use Core\App;
use Core\Database;
use models\Inbox;

if ($_SESSION['user']['role'] == 'user') {
    $db = App::resolve(Database::class);
    $email = $_SESSION['user']['email'];
    $id = $_GET['id'] + 0;

    $sent = $db->query("select mail.*, users.name, users.avatar, inbox.is_starred from mail, users, inbox where mail.sent_by = :email AND mail.id = $id AND inbox.mail_id = $id AND users.email = mail.sent_by", ["email" => $email])->find();

    $mail = null;

    if (!$sent) {
        $mail = $db->query("select mail.*, users.name, users.avatar, inbox.is_starred from mail, inbox, users where inbox.email = :email AND inbox.mail_id = $id AND mail.id = $id AND users.email = mail.sent_by", [
            'email' => $email
        ])->findOrFail();
        // dd($mail);
    } else {
        $mail = $sent;
    }

    $sent_to = $db->query("select user_email from mail_sent_to where mail_sent_to.mail_id = $id AND mail_sent_to.user_email <> :email", [
        'email' => $email
    ])->get();

    $cc = $db->query("select email from mail_cc where mail_cc.mail_id = $id")->get();

    $bcc = $db->query("select email from mail_bcc where mail_bcc.mail_id = $id AND mail_bcc.email = :email", [
        'email' => $email
    ])->get();


    $temp_cc = [];

    foreach ($cc as $email) {
        $temp_cc[] = $email['email'];
    }

    $temp_bcc = [];

    foreach ($bcc as $email) {
        $temp_bcc[] = $email['email'];
    }

    $temp_sent_to = [];

    foreach ($sent_to as $email) {
        $temp_sent_to[] = $email['user_email'];
    }
    
    // dd([
    //     'mail' => $mail,
    //     'sent_to' => $temp_sent_to,
    //     'cc' => $temp_cc,
    //     'bcc' => $temp_bcc,
    // ]);
    
    // dd([
    //     'mail' => $mail,
    //     'sent_to' => $temp_sent_to,
    //     'cc' => $temp_cc,
    //     'bcc' => $temp_bcc,
    // ]);

    view("mail.view.php", [
        'mail' => $mail,
        'sent_to' => $temp_sent_to,
        'cc' => $temp_cc,
        'bcc' => $temp_bcc,
    ]);

} else {
    header('location: /admin');
}