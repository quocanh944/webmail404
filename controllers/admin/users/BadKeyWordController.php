<?php

  use Core\App;
  use Core\Database;
  use models\User;

  if ($_SESSION['user']['role'] == 'admin') {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $db = App::resolve(Database::class);
        $keyword = $_POST['keyword'];
        $db->query('INSERT INTO badkeywords (content) VALUES (:content)', [
            'content' => $keyword
        ]);

        echo json_encode(['success' => true]);
        exit;
    }
    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        $db = App::resolve(Database::class);
        $keywords = $db->query('select * from badkeywords', [])->get();
        view("admin/bad-keywords.view.php", [
            'keywords' => $keywords,
        ]);
        exit;
    }
    if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
        $keywordID = $_GET['id']; // Lấy ID từ khóa được gửi từ client
        $db = App::resolve(Database::class);
        $db->query('DELETE FROM badkeywords WHERE ID = :keyword_id', [
            'keyword_id' => $keywordID
        ]);
        echo json_encode(['success' => true, 'id' => $keywordID]);
        exit;
    }


  }
  else {
      header('location: /bad-keywords');
  }
?>
