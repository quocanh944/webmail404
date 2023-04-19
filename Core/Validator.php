<?php

namespace Core;

class Validator
{
    public static function badkeyword($value) {
        $db = App::resolve(Database::class);
        $stm = "SELECT content
                FROM badkeywords";

        $allBadKeyWords = $db->query($stm)->get();

        foreach ($allBadKeyWords as $keyword) {
            if (strpos($value, $keyword['content']) != false) {
                return [false, $keyword['content']];
            }
        }

        return [true];
    }

    public static function fileSizeCheck() {
        $db = App::resolve(Database::class);
        $stm = "SELECT * FROM settings WHERE id = 1";

        $appSettings = $db->query($stm)->find();

        $error = [];

        if (count($_FILES['attachment']['size']) > ($appSettings['max_attachments'] + 0)) {
            $error['max_attachments'] = "Maximun number of file can be sent is: " . $appSettings['max_attachments'];
        }

        foreach ($_FILES['attachment']['size'] as $size) {
            if ($size > ($appSettings['max_attachment_size'] + 0) * 1024 * 1024) {
                $error['max_attachment_size'] = "Maximun file size can be sent is: " . $appSettings['max_attachment_size'];
                break;
            }
        }

        return $error;
    }

    public static function string($value, $min = 1, $max = INF)
    {
        $value = trim($value);

        return strlen($value) >= $min && strlen($value) <= $max;
    }

    public static function email($value)
    {
        return filter_var($value, FILTER_VALIDATE_EMAIL);
    }
}
