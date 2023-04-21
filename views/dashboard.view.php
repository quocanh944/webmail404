<?php require('partials/head.php') ?>
<?php require('partials/nav.php') ?>


<main>
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="rounded-circle mb-2" style="height: 10rem;" src="/loadAvatar" id="output" alt="">
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        <p class="text-danger"><?php echo isset($img) ? $img : '' ?></p>
                        <p class="text-success"><?php echo isset($succes_img) ? $succes_img : '' ?></p>
                        <!-- Profile picture upload button-->
                        <form action="/uploadAvatar" method="post" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <input name="avatar" class="form-control" type="file" id="avatar" onchange="loadFile(event)" multiple accept="image/*">
                            </div>
                            <button class="btn btn-primary" type="submit" name="submit" value="upload">Upload new image</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <form action="/changePassword" method="post">
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1">Fullname</label>
                                <input class="form-control" value="<?php echo $user['name'] ?>" readonly>
                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" id="inputEmailAddress" type="email" value="<?php echo $user['email'] ?>" readonly>
                            </div>

                            <!-- Form Group (role)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="role">Role</label>
                                <input class="form-control" id="role" value="User" readonly>
                            </div>
                            <!-- Form Row (Change password)-->
                            <!-- Form Row (Old password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="oldpassword">Your old password: </label>
                                <p class="text-danger"><?php echo isset($error) ? (isset($error['oldpassword']) ? $error['oldpassword'] : '') : '' ?></p>
                                <input class="form-control" id="oldpassword" name="oldpassword" type="password">
                            </div>
                            <!-- Form Row (New password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="newpassword">Your new password: </label>
                                <p class="text-danger"><?php echo isset($error) ? (isset($error['newpassword']) ? $error['newpassword'] : '') : '' ?></p>
                                <input class="form-control" id="newpassword" name="newpassword" type="password">
                            </div>
                            <!-- Form Row (Confirm password)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="confirmpassword">Confirm new password: </label>
                                <input class="form-control" id="confirmpassword" name="confirmpassword" type="password">
                            </div>
                            <!-- Save changes button-->
                            <p class="text-success"><?php echo isset($success) ? $success : '' ?></p>
                            <button class="btn btn-primary" type="submit">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    var loadFile = function(event) {
        var image = document.getElementById('output');
        image.src = URL.createObjectURL(event.target.files[0]);
    };
</script>

<?php require('partials/footer.php') ?>