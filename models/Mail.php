<?php

namespace models;

use Core\App;
use Core\Database;

class Mail
{
  private $id;
  private $label;
  private $content;
  private $attachment;
  private $createdAt;
  private $cc;
  private $bcc;
  private $sentBy;
  private $isRead;
  private $isStarred;
  private $sentTo;

  public function __construct($id, $label, $content, $attachment, $createdAt, $cc, $bcc, $sentBy, $isRead, $isStarred, $sentTo) {
    $this->id = $id;
    $this->label = $label;
    $this->content = $content;
    $this->attachment = $attachment;
    $this->createdAt = $createdAt;
    $this->cc = $cc;
    $this->bcc = $bcc;
    $this->sentBy = $sentBy;
    $this->isRead = $isRead;
    $this->isStarred = $isStarred;
    $this->sentTo = $sentTo;
  }


  public function getId() {
        return $this->id;
    }

    public function getLabel() {
        return $this->label;
    }

    public function setLabel($label) {
        $this->label = $label;
    }

    public function getContent() {
        return $this->content;
    }

    public function setContent($content) {
        $this->content = $content;
    }

    public function getAttachment() {
        return $this->attachment;
    }

    public function setAttachment($attachment) {
        $this->attachment = $attachment;
    }

    public function getCreatedAt() {
        return $this->createdAt;
    }

    public function getCc() {
        return $this->cc;
    }

    public function setCc($cc) {
        $this->cc = $cc;
    }

    public function getBcc() {
        return $this->bcc;
    }

    public function setBcc($bcc) {
        $this->bcc = $bcc;
    }

    public function getSentBy() {
        return $this->sentBy;
    }

    public function setSentBy($sentBy) {
        $this->sentBy = $sentBy;
    }

    public function getIsRead() {
        return $this->isRead;
    }

    public function setIsRead($isRead) {
        $this->isRead = $isRead;
    }

    public function getIsStarred() {
        return $this->isStarred;
    }

    public function setIsStarred($isStarred) {
        $this->isStarred = $isStarred;
    }

    public function getSentTo() {
        return $this->sentTo;
    }

    public function setSentTo($sentTo) {
        $this->sentTo = $sentTo;
    }

  public static function findAll()
    {
        $db = App::resolve(Database::class);
        $mails = $db->query('SELECT * FROM mail')->fetchAll();

        $result = [];

        foreach ($mails as $mail) {
            $result[] = new Mail(
                $mail['id'],
                $mail['label'],
                $mail['content'],
                $mail['attachment'],
                $mail['created_at'],
                $mail['cc'],
                $mail['bcc'],
                $mail['sent_by'],
                $mail['is_read'],
                $mail['is_starred'],
                $mail['sent_to']
            );
        }

        return $result;
    }

  public static function findById($id) {
    $db = App::resolve(Database::class);
    // find the corresponding mail
    $mail = $db->query('SELECT * FROM mail WHERE id = :id', ['id' => $id])->findOrFail();
    return new Mail(
      $mail['id'],
      $mail['label'], 
      $mail['content'], 
      $mail['attachment'], 
      $mail['created_at'],
      $mail['cc'], 
      $mail['bcc'], 
      $mail['sent_by'], 
      $mail['is_read'], 
      $mail['is_starred'], 
      $mail['sent_to']
    );
  }

  public static function findBySentBy($sentBy) {
    $db = App::resolve(Database::class);
    // find mails sent by a specific user
    $mails = $db->query('SELECT * FROM mail WHERE sent_by = :sentBy', ['sentBy' => $sentBy])->get();
    $result = [];
    foreach ($mails as $mail) {
      $result[] = new Mail($mail['id'], $mail['label'], $mail['content'], $mail['attachment'], $mail['created_at'], $mail['cc'], $mail['bcc'], $mail['sent_by'], $mail['is_read'], $mail['is_starred'], $mail['sent_to']);
    }
    return $result;
  }

  public static function insert()
  {
      $db = App::resolve(Database::class);

      $query = "INSERT INTO mail (label, content, attachment, created_at, cc, bcc, sent_by, is_read, is_starred, sent_to) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

      $params = [
          $this->label, 
          $this->content, 
          $this->attachment, 
          $this->created_at, 
          $this->cc, 
          $this->bcc, 
          $this->sent_by, 
          $this->is_read, 
          $this->is_starred, 
          $this->sent_to
      ];

      $db->query($query, $params);
  }


  public function update()
  {
      $db = App::resolve(Database::class);

      $query = "UPDATE mail
                SET label = ?,
                    content = ?,
                    attachment = ?,
                    cc = ?,
                    bcc = ?,
                    sent_to = ?,
                    is_read = ?,
                    is_starred = ?
                WHERE id = ?";
      $params = [
          $this->label,
          $this->content,
          $this->attachment,
          $this->cc,
          $this->bcc,
          $this->sent_to,
          $this->is_read,
          $this->is_starred,
          $this->id
      ];

      $db->query($query, $params);
  }


  public function delete() {
    $db = App::resolve(Database::class);

    $query = "
      DELETE FROM mail
      WHERE id = ?
    ";
    $params = [
        $this->id
    ];

    $db->query($query, $params);
  }

  public function __toString(){
    return "Mail[$this->id, $this->label, $this->content, $this->attachment, $this->createdAt, $this->cc, $this->bcc, $this->sentBy, $this->isRead, $this->isStarred, $this->sentTo]";
  }

}