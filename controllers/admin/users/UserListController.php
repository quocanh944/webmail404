<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
    // Init
    $db = App::resolve(Database::class);
    
    // Check session
    $email = $_SESSION['user']['email'];
    $user = $db->query('select * from users where email = :email', [
        'email' => $email
    ])->find();

    // Get all users
    ["allUsers" => $allUsers, "count" => $count] = User::all();


    // Get page size
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

    // Get locked users
    $sql = 'SELECT users.*, locks.lock_reason
            FROM users
            JOIN locks ON users.email = locks.email';
    $lockedUsers = $db->query($sql)->get();
    // dd($lockedUsers);
    view("admin/user-list.view.php", [
        'all_users' => $users,
        'locked_users' => $lockedUsers,
        'page' => $page,
        'pageSize' => $pageSize,
        'count' => $count,
        'totalPages' => $totalPages
    ]);
} else {
    header('location: /user-list');
}

