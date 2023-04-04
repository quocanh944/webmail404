<?php

namespace models;

use Core\App;
use Core\Database;


class Spam {
  
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
  public function __toString()
  {
      return "Spam[$this->mail_id, $this->user_id]";
  } 

}

?>
