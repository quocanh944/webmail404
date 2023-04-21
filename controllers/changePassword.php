<?php

use Core\App;
use Core\Database;
use Core\Validator;
use models\User;

$db = App::resolve(Database::class);

$oldPassword = $_POST['oldpassword'];
$newPassword = $_POST['newpassword'];
$confirmPassword = $_POST['confirmpassword'];

$email = $_SESSION['user']['email'];
$details = User::findById($email);

$error = [];

if (empty($oldPassword) && empty($newPassword) && empty($confirmPassword)) {
    view("dashboard.view.php", [
        'user' => $details,
    ]);
    die();
}

if ($newPassword != $confirmPassword) {
    $error['newpassword'] = 'New password and confirm password is not match.';
}

if (md5($oldPassword) != $details['password']) {
    $error['oldpassword'] = 'Wrong password.';
}

if (!Validator::string($newPassword, 7, 255)) {
    $error['newpassword'] = 'Please provide a password of at least seven characters.';
}

if (count($error) > 0) {
    view("dashboard.view.php", [
        'user' => $details,
        'error' => $error
    ]);
    die();
}

$user = new User($email, md5($newPassword), $details['name'], 'user', $details['avatar']);
$user->update();
view("dashboard.view.php", [
    'user' => $details,
    'success' => "Successfull"
]);