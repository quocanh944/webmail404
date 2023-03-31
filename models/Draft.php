<?php
namespace models;

use Core\App;
use Core\Database;

class Draft
{
    private $mailId;
    private $userId;
    
    public function __construct($mailId, $userId)
    {
        $this->mailId = $mailId;
        $this->userId = $userId;
    }
    
    public function getMailId()
    {
        return $this->mailId;
    }
    
    public function setMailId($mailId)
    {
        $this->mailId = $mailId;
    }
    
    public function getUserId()
    {
        return $this->userId;
    }
    
    public function setUserId($userId)
    {
        $this->userId = $userId;
    }
    
    public static function findById($mailId, $userId)
    {
        $db = App::resolve(Database::class);
        // find the corresponding draft
        $draft = $db->query('select * from draft where mail_id = :mail_id and user_id = :user_id', [
            'mail_id' => $mailId,
            'user_id' => $userId
        ])->findOne();
        if ($draft) {
            return new Draft($draft['mail_id'], $draft['user_id']);
        } else {
            return null;
        }
    }
    
    public function save()
    {
        $db = App::resolve(Database::class);
        if ($this->mailId) {
        $db->query('UPDATE draft SET user_id = :user_id WHERE mail_id = :mail_id', [
            'mail_id' => $this->mailId,
            'user_id' => $this->userId
        ]);
    }
    }
    
    public function delete()
    {
        $db = App::resolve(Database::class);
        $db->query('delete from draft where mail_id = :mail_id and user_id = :user_id', [
            'mail_id' => $this->mailId,
            'user_id' => $this->userId
        ]);
    }

    public function __toString()
    {
        return "Draft[$this->mail_id, $this->user_id]";
    }
}
?>
