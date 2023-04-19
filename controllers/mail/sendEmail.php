<?php

use Core\App;
use Core\Database;
use Core\Validator;
use models\Mail;
use models\User;

$target_dir = "./../uploads";

$content = $_POST['content'];
$label = $_POST['label'];
$sentTo = isset($_POST['sent_to']) ? explode(",", $_POST['sent_to']) : null;
$cc = isset($_POST['cc']) ? explode(",", $_POST['cc']) : null;
$user = $_SESSION['user']['email'];

// dd([basename($_FILES['attachment']['name'][0]), $_POST, getcwd()]);

// for ($index = 0; $index < count($_FILES["attachment"]['size']); $index++) {
    
// }


header('Content-Type: application/json');

if (!isset($content) || !isset($label) || !isset($sentTo)) {
    echo json_encode(['Error' => "Payload not match"]);
    die();
}

$badCheck = Validator::badkeyword($content);

if ($badCheck[0] != true) {
    echo json_encode(['Error' => "Bad keyword ($badCheck[1]) found in content."]);
    die();
}

$fileCheck = Validator::fileSizeCheck();
if (count($fileCheck) > 0) {
    echo json_encode(["Error" => $fileCheck]);
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
    echo json_encode(['Error' => $respone]);
} else {
    $mail = new Mail($label, $content, $user, $sentTo, $cc, $_FILES['attachment']);
    $mailId = $mail->save();

    echo json_encode(['status' => "success", 'mailId' => $mailId]);
}