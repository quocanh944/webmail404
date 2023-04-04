<?php

namespace Core\Middleware;

class AdminAuthenticated
{
    public function handle()
    {
        if (!isset($_SESSION['user']) || $_SESSION['user']['role'] != 'admin') {
            header('location: /');
            exit();
        }
    }
}