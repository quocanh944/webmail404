<?php

class Database {
    
    private static $instance;
    
    private function __construct() {}
    private function __clone() {}
    
    public static function getInstance() {
        if (!self::$instance) {
            $host = 'localhost';
            $dbname = 'webmail';
            $username = 'root';
            $password = '';
            self::$instance = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        return self::$instance;
    }
    
}