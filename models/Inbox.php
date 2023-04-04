<?php 

namespace models;

use Core\App;
use Core\Database;

class Inbox {

  public function setMailId($mailId , $userId) {
    // $this->mailId = $mailId;
  }

  public static function getInboxMail($userMail, $page = 0, $pageSize = 20) {
    $db = App::resolve(Database::class);

    $stm = "SELECT mail.id, mail.label, mail.content, mail.attachment, mail.created_at, mail.sent_by, mail.is_read, mail.is_starred
            FROM mail
            INNER JOIN mail_sent_to ON mail.id = mail_sent_to.mail_id
            WHERE mail_sent_to.user_id = :user_id
            ORDER BY mail.created_at DESC
            LIMIT " . ($pageSize*$page) . " , $pageSize";

    $stm_count = "SELECT COUNT(mail.id) As NumberOfMails
                  FROM mail
                  INNER JOIN mail_sent_to ON mail.id = mail_sent_to.mail_id
                  WHERE mail_sent_to.user_id = :user_id";

    return [
      "allMails" => $db->query($stm, [
        'user_id' => $userMail
      ])->get(),
      "count" => $db->query($stm_count, [
        'user_id' => $userMail
      ])->get()[0]["NumberOfMails"]
    ];

  }

}
