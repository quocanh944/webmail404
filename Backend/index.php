<?php

// Testing Database connect and user model

require('./config/config.php');

$pdo = Database::getInstance();
$stmt = $pdo->prepare('SELECT * FROM users');
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo var_dump($rows);