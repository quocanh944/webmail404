<?php
use models\User;

$email = $_SESSION['user']['email'];
$source_dir = './../uploads/users/';

$details = User::findById($email);

view("dashboard.view.php", [
    'user' => $details,
]);