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
    private $cc;
    private $bcc;
    private $attachments;

    public function __construct($label, $content, $sentBy, $sentTo, $cc, $bcc, $attachments)
    {
        $this->label = $label;
        $this->content = $content;
        $this->created_at = date('Y-m-d H:i:s');
        $this->sent_by = $sentBy;
        $this->sent_to = $sentTo;
        $this->cc = $cc;
        $this->bcc = $bcc;
        $this->attachments = $attachments;
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
        $stm4 = "INSERT INTO mail_cc (email, mail_id) VALUES ( :user_cc, $mailId )";
        $stm6 = "INSERT INTO mail_bcc (email, mail_id) VALUES ( :user_bcc, $mailId )";

        foreach ($this->sent_to as $userSentTo) {
            $db->query($stm2, [
                'user_sent_to' => $userSentTo
            ]);
            $db->query($stm3, [
                'user_sent_to' => $userSentTo
            ]);
        }

        foreach ($this->cc as $userCC) {
            $toUser = User::findById($userCC);
            if (isset($toUser['email'])) {
                $db->query($stm4, [
                    'user_cc' => $userCC
                ]);
                $db->query($stm3, [
                    'user_sent_to' => $userCC
                ]);
            }
        }

        foreach ($this->bcc as $userBCC) {
            $toUser = User::findById($userCC);
            if (isset($toUser['email'])) {
                $db->query($stm6, [
                    'user_bcc' => $userBCC
                ]);
                $db->query($stm3, [
                    'user_sent_to' => $userBCC
                ]);
            }
        }

        $stm5 = "INSERT INTO mail_attachments (mail_id, attachment) VALUES ($mailId , :attachment)";
        mkdir('./../uploads/' . $mailId);

        for ($index = 0; $index < count($this->attachments['size']); $index++) {
            if ($this->attachments['error'][$index] == 0) {
                $target_file =  "./../uploads/$mailId/" . basename($this->attachments["name"][$index]);
                $db->query($stm5, [
                    'attachment' => basename($this->attachments["name"][$index])
                ]);
                move_uploaded_file($this->attachments["tmp_name"][$index], $target_file);
            }
        }

        return $mailId;
    }

    public function saveDraft()
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
             VALUES ($mailId , :user_sent_to , 0 , 0 , 1 , 0 , 0)";
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

    public static function getMailDetails($id, $email)
    {
        $db = App::resolve(Database::class);

        $sent = $db->query("select mail.*, users.name, users.avatar, inbox.is_starred from mail, users, inbox where mail.sent_by = :email AND mail.id = $id AND inbox.mail_id = $id AND users.email = mail.sent_by", ["email" => $email])->find();

        $mail = null;

        if (!$sent) {
            $mail = $db->query("select mail.*, users.name, users.avatar, inbox.is_starred from mail, inbox, users where inbox.email = :email AND inbox.mail_id = $id AND mail.id = $id AND users.email = mail.sent_by", [
                'email' => $email
            ])->findOrFail();
            // dd($mail);
        } else {
            $mail = $sent;
        }

        $sent_to = $db->query("select user_email from mail_sent_to where mail_sent_to.mail_id = $id AND mail_sent_to.user_email <> :email", [
            'email' => $email
        ])->get();

        $cc = $db->query("select email from mail_cc where mail_cc.mail_id = $id")->get();

        $bcc = $db->query("select email from mail_bcc where mail_bcc.mail_id = $id AND mail_bcc.email = :email", [
            'email' => $email
        ])->get();

        $attachments = $db->query("select attachment from mail_attachments where mail_attachments.mail_id = $id")->get();

        $temp_attachments = [];

        foreach ($attachments as $attachment) {
            $temp_attachments[] = $attachment['attachment'];
        }

        $temp_cc = [];

        foreach ($cc as $email) {
            $temp_cc[] = $email['email'];
        }

        $temp_bcc = [];

        foreach ($bcc as $email) {
            $temp_bcc[] = $email['email'];
        }

        $temp_sent_to = [];

        foreach ($sent_to as $email) {
            $temp_sent_to[] = $email['user_email'];
        }

        Mail::setRead($id);

        return [
            'mail' => $mail,
            'sent_to' => $temp_sent_to,
            'cc' => $temp_cc,
            'bcc' => $temp_bcc,
            'attachments' => $temp_attachments,
        ];
    }

    public static function setRead($id) {
        $db = App::resolve(Database::class);

        $id = $id + 0;

        $stm = "UPDATE inbox SET is_read = 1 WHERE mail_id = $id";

        $db->query($stm);
    }

    public static function setUnRead($id) {
        $db = App::resolve(Database::class);

        $id = $id + 0;

        $stm = "UPDATE inbox SET is_read = 0 WHERE mail_id = $id AND inbox.email = :email";

        $db->query($stm, ['email' => $_SESSION['user']['email']]);
    }

    public static function moveToTrash($id) {
        $db = App::resolve(Database::class);

        $id = $id + 0;

        $stm = "UPDATE inbox SET is_trash = 1, is_spam = 0, is_draft = 0 WHERE mail_id = $id AND inbox.email = :email";

        $db->query($stm, ['email' => $_SESSION['user']['email']]);
    }

    public static function moveToSpam($id) {
        $db = App::resolve(Database::class);

        $id = $id + 0;

        $stm = "UPDATE inbox SET is_trash = 0, is_spam = 1, is_draft = 0 WHERE mail_id = $id AND inbox.email = :email";

        $db->query($stm, ['email' => $_SESSION['user']['email']]);
    }

    public static function deleteMail($id) {
        $db = App::resolve(Database::class);

        $id = $id + 0;

        $stm = "DELETE FROM inbox WHERE mail_id = $id AND inbox.email = :email";

        $db->query($stm, ['email' => $_SESSION['user']['email']]);
    }
}
