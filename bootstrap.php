<?php

use Core\App;
use Core\Container;
use Core\Database;

$container = new Container();

$container->bind('Core\Database', function () {
    $config = require base_path('config.php');

    return new Database($config['database'], $config['account_database']['username'], $config['account_database']['password']);
});

App::setContainer($container);
