<?php

use Core\App;
use Core\Database;
use models\Mail;
use models\User;

$db = App::resolve(Database::class);

$content = $_POST['content'];
$label = $_POST['label'];
$sentTo = isset($_POST['sent_to']) ? explode(",", $_POST['sent_to']) : null;
$user = $_SESSION['user']['email'];

header('Content-Type: application/json');

if (!isset($content) || !isset($label) || !isset($sentTo)) {
    echo json_encode(['Error' => "Payload not match"]);
    die();
}

$respone = [];
$error = false;

foreach ($sentTo as $email) {
    $toUser = User::findById($email);
    if (!isset($toUser['email'])) {
        $error = true;
        if (!isset($respone['Invalid Email'])) {
            $respone['Invalid Email'] = [$email];
        } else {
            array_push($respone['Invalid Email'], $email);
        }
    }
}

if ($error) {
    echo json_encode($respone);
} else {
    $mail = new Mail($label, $content, $user, $sentTo);
    $mailId = $mail->save();

    echo json_encode(['status' => "success", 'mailId' => $mailId]);
}