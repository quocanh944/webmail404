<?php
use models\Mail;

if ($_SESSION['user']['role'] == 'user') {
    $email = $_SESSION['user']['email'];
    $id = $_GET['id'] + 0;
    view("mail.view.php", Mail::getMailDetails($id, $email));

} else {
    header('location: /admin');
}