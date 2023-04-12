<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {

    ["allUsers" => $allUsers, "count" => $count] = User::all();

    $db = App::resolve(Database::class);
    $email = $_SESSION['user']['email'];
    $user = $db->query('select * from users where email = :email', [
        'email' => $email
    ])->find();
    $page = isset($_GET['page']) ? $_GET['page'] - 1 : 0;
    $pageSize = isset($_GET['pageSize']) ? $_GET['pageSize'] : 5;
    
    // Calculate number of pages
    $totalPages = (int) ceil($count / $pageSize);

    // Make sure page number is within range
    if ($page < 0) {
        $page = 0;
    } elseif ($page > $totalPages) {
        $page = $totalPages;
    }

    // Get users for current page
    $offset = $page * $pageSize;
    ["users" => $users, "count_limit" => $count_limit] = User::limit($pageSize, $offset);

    view("admin/user-list.view.php", [
        'all_users' => $users,
        'page' => $page,
        'pageSize' => $pageSize,
        'count' => $count,
        'totalPages' => $totalPages
    ]);
} else {
    header('location: /user-list');
}

