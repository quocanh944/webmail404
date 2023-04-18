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
