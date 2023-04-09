<?php

namespace models;

use Core\App;
use Core\Database;

class Inbox
{

  public function setMailId($mailId, $userId)
  {
    // $this->mailId = $mailId;
  }

  public static function changeStarred($mailId)
  {
    $db = App::resolve(Database::class);

    $stm = "UPDATE inbox 
            SET inbox.is_starred = IF (`is_starred`, 0, 1)
            WHERE inbox.mail_id = :mail";

    return $db->query($stm, [
      'mail' => $mailId
    ])->find();
  }

  public static function isRightUser($mailId, $userMail)
  {
    $db = App::resolve(Database::class);

    $stm = "SELECT count(*) AS NumberOfMails
            FROM inbox
            WHERE inbox.email = :user_id 
            AND inbox.mail_id = :mail";

    $count = $db->query($stm, [
      'user_id' => $userMail,
      'mail' => $mailId
    ])->get()[0]['NumberOfMails'];

    return $count > 0;
  }

  public static function getInboxMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM inbox, mail
            WHERE inbox.email = :user_id 
            AND inbox.is_spam = false 
            AND inbox.is_trash = false 
            AND inbox.is_draft = false 
            AND inbox.mail_id = mail.id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM inbox, mail 
                  WHERE inbox.email = :user_id 
                  AND inbox.is_spam = false 
                  AND inbox.is_trash = false 
                  AND inbox.is_draft = false 
                  AND inbox.mail_id = mail.id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }

  public static function getInboxStarredMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM inbox, mail 
            WHERE inbox.email = :user_id
            AND inbox.is_spam = false 
            AND inbox.is_starred = true
            AND inbox.is_trash = false 
            AND inbox.is_draft = false 
            AND inbox.mail_id = mail.id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM inbox, mail 
                  WHERE inbox.email = :user_id 
                  AND inbox.is_spam = false 
                  AND inbox.is_starred = true
                  AND inbox.is_trash = false 
                  AND inbox.is_draft = false 
                  AND inbox.mail_id = mail.id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }

  public static function getSpamMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM inbox, mail 
            WHERE inbox.email = :user_id
            AND inbox.is_spam = true 
            AND inbox.is_trash = false 
            AND inbox.is_draft = false 
            AND inbox.mail_id = mail.id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM inbox, mail 
                  WHERE inbox.email = :user_id 
                  AND inbox.is_spam = true
                  AND inbox.is_trash = false 
                  AND inbox.is_draft = false 
                  AND inbox.mail_id = mail.id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }

  public static function getTrashMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM inbox, mail 
            WHERE inbox.email = :user_id
            AND inbox.is_spam = false
            AND inbox.is_trash = true
            AND inbox.is_draft = false
            AND inbox.mail_id = mail.id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM inbox, mail 
                  WHERE inbox.email = :user_id 
                  AND inbox.is_spam = false
                  AND inbox.is_trash = true 
                  AND inbox.is_draft = false 
                  AND inbox.mail_id = mail.id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }

  public static function getDraftMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM inbox, mail 
            WHERE inbox.email = :user_id
            AND inbox.is_spam = false
            AND inbox.is_trash = false
            AND inbox.is_draft = true
            AND inbox.mail_id = mail.id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM inbox, mail 
                  WHERE inbox.email = :user_id 
                  AND inbox.is_spam = false
                  AND inbox.is_trash = false 
                  AND inbox.is_draft = true 
                  AND inbox.mail_id = mail.id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }

  public static function getSentMail($userMail, $page = 0, $pageSize = 20)
  {
    $db = App::resolve(Database::class);

    $pageSize = $pageSize + 0;
    $page = $page + 0;

    $stm = "SELECT * 
            FROM mail 
            WHERE mail.sent_by = :user_id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize * $page) . " , $pageSize";

    $stm_count = "SELECT count(mail.id) AS NumberOfMails
                  FROM mail 
                  WHERE mail.sent_by = :user_id ";

    $allmail = $db->query($stm, [
      'user_id' => $userMail
    ])->get();

    $count = $db->query($stm_count, [
      'user_id' => $userMail
    ])->get()[0]['NumberOfMails'];

    return [
      "allMails" => $allmail,
      "count" => $count
    ];
  }
}
