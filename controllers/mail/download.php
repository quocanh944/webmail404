<?php
use Core\App;
use Core\Database;

$db = App::resolve(Database::class);

$id = $_GET['id'] + 0;
$email = $_SESSION['user']['email'];

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

if (isset($_GET['id'])) {
    //Read the filename
    $filename = $_GET['path'];
    //Check the file exists or not
    if (file_exists("./../uploads/" . $_GET['id'] . "/" . $filename)) {

        //Define header information
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header("Cache-Control: no-cache, must-revalidate");
        header("Expires: 0");
        header('Content-Disposition: attachment; filename="' . basename($filename) . '"');
        header('Content-Length: ' . filesize($filename));
        header('Pragma: public');

        //Clear system output buffer
        flush();

        //Read the size of the file
        readfile("./../uploads/" . $_GET['id'] . "/" . $filename);

        //Terminate from the script
        die();
    } else {
        header('Content-Type: application/json');
        echo json_encode(["Error" => "File does not exist."]);
    }
} else {
    header('Content-Type: application/json');
    echo json_encode(["Error" => "Id not provided"]);
}
