<?php

use Core\App;
use Core\Database;
use models\User;

if ($_SESSION['user']['role'] == 'admin') {
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $db = App::resolve(Database::class);
    $data = json_decode(file_get_contents('php://input'), true);
    $newSettings = $data['settingUpdate'];
    $db->query('UPDATE settings SET max_recipients = :maxRecipients, max_email_size = :maxEmailSize, max_attachments = :maxAttachments, max_attachment_size = :maxAttachmentSize WHERE id = :settingId', [
      'maxRecipients' => intval($newSettings['maxRecipients']),
      'maxEmailSize' => intval($newSettings['maxEmailSize']),
      'maxAttachments' => intval($newSettings['maxAttachments']),
      'maxAttachmentSize' => intval($newSettings['maxAttachmentSize']),
      'settingId' => 1
    ]);

    // Return a success response to the client
    echo json_encode(['success' => true]);
    exit;
  }
} else {
  header('location: /user-list');
}
?>
