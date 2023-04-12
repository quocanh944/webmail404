<?php

  use Core\App;
  use Core\Database;
  use models\User;

  if ($_SESSION['user']['role'] == 'admin') {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      $db = App::resolve(Database::class);
      $data = json_decode(file_get_contents('php://input'), true);
      $delUser = $data['userId'];
      $db->query('DELETE FROM users WHERE email = :userEmail;', [
              'userEmail' => $delUser
          ]);
    }
  }
  else {
      header('location: /user-list');
  }
?>
