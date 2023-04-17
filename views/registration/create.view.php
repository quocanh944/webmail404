<?php require base_path('views/partials/head.php') ?>

<main style="padding-top: 10%; padding-bottom: 10%">
    <form class="w-25 m-auto" action="/register" method="POST">
        <!-- Email input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="fullName">Your Fullname</label>
            <input type="fullName" id="fullName" name="fullName" class="form-control" value="<?php echo isset($_POST['fullName']) ? $_POST['fullName'] : '' ?>" />
        </div>

        <div class="form-outline mb-4">
            <label class="form-label" for="email">Email address</label>
            <input type="email" id="email" name="email" class="form-control" value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ?>"/>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="password">Password</label>
            <input type="text" id="password" name="password" class="form-control" />
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Register</button>

        <!-- Register buttons -->
        <div class="text-center">
            <p>Is a member? <a href="login">Login</a></p>
        </div>
        <div>
            <?php if (isset($errors['email'])) : ?>
                <li class="text-danger mt-2"><?= $errors['email'] ?></li>
            <?php endif; ?>

            <?php if (isset($errors['password'])) : ?>
                <li class="text-danger mt-2"><?= $errors['password'] ?></li>
            <?php endif; ?>

            <?php if (isset($errors['fullName'])) : ?>
                <li class="text-danger mt-2"><?= $errors['fullName'] ?></li>
            <?php endif; ?>
        </div>
    </form>
</main>

<?php require base_path('views/partials/footer.php') ?>