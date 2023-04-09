<?php

namespace models;

use Core\App;
use Core\Database;

class Mail
{
    private $label;
    private $content;
    private $created_at;
    private $sent_by;
    private $sent_to;

    public function __construct($label, $content, $sentBy, $sentTo)
    {
        $this->label = $label;
        $this->content = $content;
        $this->created_at = date('Y-m-d H:i:s');
        $this->sent_by = $sentBy;
        $this->sent_to = $sentTo;
    }

    public function save()
    {
        $db = App::resolve(Database::class);
        $stm1 = "INSERT INTO mail (label, content, sent_by) 
                VALUES (:label, :content, :sent_by)";

        $mailId = $db->query($stm1, [
            'label' => $this->label,
            'content' => $this->content,
            'sent_by' => $this->sent_by,
        ])->connection->lastInsertId();

        $stm2 = "INSERT INTO mail_sent_to (mail_id, user_email) VALUES ($mailId , :user_sent_to)";
        $stm3 = "INSERT INTO inbox (mail_id , email , is_read , is_starred , is_draft , is_trash , is_spam)
             VALUES ($mailId , :user_sent_to , 0 , 0 , 0 , 0 , 0)";
        foreach ($this->sent_to as $userSentTo) {
            $db->query($stm2, [
                'user_sent_to' => $userSentTo
            ]);
            $db->query($stm3, [
                'user_sent_to' => $userSentTo
            ]);
        }

        return $mailId;
    }

    // public function saveDraft()
    // {
    //     $db = App::resolve(Database::class);
    //     $stm1 = "INSERT INTO mail (label, content, sent_by) 
    //             VALUES (:label, :content, :sent_by)";

    //     $mailId = $db->query($stm1, [
    //         'label' => $this->label,
    //         'content' => $this->content,
    //         'sent_by' => $this->sent_by,
    //     ])->connection->lastInsertId();

    //     $stm2 = "INSERT INTO mail_sent_to (mail_id, user_email) VALUES ($mailId , :user_sent_to)";
    //     $stm3 = "INSERT INTO inbox (mail_id , email , is_read , is_starred , is_draft , is_trash , is_spam)
    //          VALUES ($mailId , :user_sent_to , 0 , 0 , 1 , 0 , 0)";
    //     foreach ($this->sent_to as $userSentTo) {
    //         $db->query($stm2, [
    //             'user_sent_to' => $userSentTo
    //         ]);
    //         $db->query($stm3, [
    //             'user_sent_to' => $userSentTo
    //         ]);
    //     }
    // }

    public static function getMailDetails($id)
    {
        $db = App::resolve(Database::class);
        $stm = "SELECT * FROM mail WHERE mail.id = :mail_id";
        $stm1 = "SELECT * FROM mail_sent_to, users WHERE mail_sent_to.mail_id = :mail_id AND mail_sent_to.user_email = users.email";
        return ['mail' => $db->query($stm, ["mail_id" => $id])->find(), 
                'sent_to' => $db->query($stm1, ["mail_id" => $id])->find()];
    }
}
