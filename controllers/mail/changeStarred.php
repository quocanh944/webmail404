<?php

use Core\App;
use Core\Database;
use models\Inbox;

$db = App::resolve(Database::class);

$mailId = $_POST['mailId'];
// $password = $_POST['password'];
$user = $_SESSION['user']['email'];

if (Inbox::isRightUser($mailId, $user) == true) {
    Inbox::changeStarred($mailId);
    echo "Already changed $mailId";
} else {
    echo "Wrong user and mail id";
}

// echo  ? 'valid' : 'invalid';