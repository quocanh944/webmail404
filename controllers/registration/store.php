<?php

use Core\App;
use Core\Database;
use Core\Validator;

$db = App::resolve(Database::class);

$email = $_POST['email'];
$password = $_POST['password'];
$fullName = $_POST['fullName'];

$errors = [];

if (!Validator::string($fullName)) {
    $errors['fullName'] = 'Please provide your full name.';
}

if (!Validator::email($email)) {
    $errors['email'] = 'Please provide a valid email address.';
}

if (!Validator::string($password, 7, 255)) {
    $errors['password'] = 'Please provide a password of at least seven characters.';
}

// dd($errors);

if (! empty($errors)) {
    return view('registration/create.view.php', [
        'errors' => $errors
    ]);
}

$user = $db->query('select * from users where email = :email', [
    'email' => $email
])->find();

if ($user) {
    $errors['email'] = 'Email already exist.';

    return view('registration/create.view.php', [
        'errors' => $errors
    ]);
} else {
    $db->query('INSERT INTO users(email, name, password) VALUES(:email, :name, :password)', [
        'email' => $email,
        'password' => md5($password),
        'name' => $fullName,
    ]);

    login([
        'email' => $email,
        'role' => 'user'
    ]);

    header('location: /');
    exit();
}
