<?php

  use Core\App;
  use Core\Database;
  use models\User;

  if ($_SESSION['user']['role'] == 'admin') {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      $db = App::resolve(Database::class);
      $data = json_decode(file_get_contents('php://input'), true);
      $pwd = $data['pwd'];
      $email = $data['email'];
      $user = $db->query('select * from users where email = :email', [
          'email' => $email
      ])->find();
  
      if ($user && $user['password'] == md5($pwd)) {
          echo json_encode(['success' => true]);
      } else {
          echo json_encode(['success' => false, 'message' => 'Password does not match.']);
      }
      exit;
    }
  }
  else {
      header('location: /user-list');
  }
?>
