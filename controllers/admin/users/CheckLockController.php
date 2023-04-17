<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
  $db = App::resolve(Database::class);
  // check if the request is a POST request
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // check if the request is for locking a user
    if (isset($_POST["lock_user"])) {
        $email = $_POST["lock_user"];
        $db->query('INSERT INTO locks (email, lock_reason) VALUES (:email, :reason)', [
          'email' => $email,
          'reason' => 'Violation'
        ]);
        echo json_encode(['success' => true, 'message' => 'Lock successfully']);
        exit();
    }

    // check if the request is for unlocking a user
    if (isset($_POST["unlock_user"])) {
        $email = $_POST["unlock_user"];
        $db->query('DELETE FROM locks WHERE email = :email', [
          'email' => $email
        ]);
        echo json_encode(['success' => true , 'message' => 'Unlock successfully']);
        exit();
    }
  }
} else {
  header('location: /user-list');
}
?>
