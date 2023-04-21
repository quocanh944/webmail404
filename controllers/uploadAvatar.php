<?php

use models\User;

$email = $_SESSION['user']['email'];

$details = User::findById($email);

if (isset($_POST['submit'])) {
    $imgName = $_FILES["avatar"]["name"];
    $imgData = file_get_contents($_FILES["avatar"]["tmp_name"]);
    if(!isImage($imgName)) {
        view("dashboard.view.php", [
            'user' => $details,
            'img' => "Wrong format."
        ]);
        die();
    }

    if (!is_dir("./../uploads/users/" . $email)) {
        mkdir("./../uploads/users/" . $email);
    } else {
        $files = glob("./../uploads/users/" . $email . "/*");
        // Delete all the files of the list
        foreach ($files as $file) {
            if (is_file($file)) {
                // Deleting the given file
                unlink($file);
            }
        }
    }
    $file = "./../uploads/users/" . $email . "/" . $imgName;
    file_put_contents($file, $imgData);

    $user = new User($email, $details['password'], $details['name'], $details['role'], $imgName);
    $user->update();

    view("dashboard.view.php", [
        'user' => $details,
        'succes_img' => "Succesfull"
    ]);
}
