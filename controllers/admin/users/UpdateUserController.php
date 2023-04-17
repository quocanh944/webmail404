<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $db = App::resolve(Database::class);
    $data = json_decode(file_get_contents('php://input'), true);
    $updateUser = $data['userUpdate'];
    $db->query('UPDATE users SET name=:userName, role=:userRole WHERE email = :userEmail;', [
      'userName' => $updateUser['name'],
      'userRole' => $updateUser['role'],
      'userEmail' => $updateUser['email'],
    ]);

    // Return a success response to the client
    echo json_encode(['success' => true]);
    exit;
  }
} else {
  header('location: /user-list');
}
?>
