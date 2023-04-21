<?php

use Core\App;
use Core\Database;
use models\Inbox;
use models\Mail;

$db = App::resolve(Database::class);

$mailId = $_POST['mailId'];
$user = $_SESSION['user']['email'];

if (Inbox::isRightUser($mailId, $user) == true) {
    Mail::setUnRead($mailId);
    echo "Already changed $mailId";
} else {
    echo "Wrong user and mail id";
}