<?php
use models\User;

$email = $_SESSION['user']['email'];
$source_dir = './../uploads/users/';

if (!empty($_GET['email'])) {
    $email = $_GET['email'];
}

$details = User::findById($email);
if (empty($details['avatar'])) {
    $fp = file_get_contents($source_dir . 'default.png');
} else {
    $fp = file_get_contents($source_dir . $email . "/" . $details['avatar']);
}
header("content-type: image/*");
echo $fp;