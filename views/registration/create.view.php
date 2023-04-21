<?php require base_path('views/partials/head.php') ?>

<main style="padding-top: 10%; padding-bottom: 10%">
    <form class="w-25 m-auto card p-5" action="/register" method="POST">
        <h3 class="text-center">Đăng ký</h3>
        <!-- Email input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="fullName">Full Name</label>
            <input type="fullName" id="fullName" name="fullName" class="form-control" placeholder="Full Name" required value="<?php echo isset($_POST['fullName']) ? $_POST['fullName'] : '' ?>" />
        </div>

        <div class="form-outline mb-4">
            <label class="form-label" for="email">Email address</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="E-mail Address" required value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ?>"/>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="password">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required />
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
