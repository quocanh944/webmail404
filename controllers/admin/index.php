<?php
    // dd($_SESSION);
    use Core\App;
    use Core\Database;

    $db = App::resolve(Database::class);
    $stm = "SELECT * FROM settings WHERE id = 1";

    $appSettings = $db->query($stm)->find();

    view("admin/index.view.php", ['settings' => $appSettings]);
?>

<!-- <h1>This is admin</h1> -->

