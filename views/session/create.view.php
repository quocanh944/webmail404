<?php require base_path('views/partials/head.php') ?>

<link rel="stylesheet" href="../assets/dist/css/login.css">

<main>
  <div id="wrapper">
      <form class="" action="/session" method="POST">
        <h3>Sign in</h3>
        <div class="form-group">
          <input type="text" name="email" id="email" required>
          <label for="">Email</label>
        </div>
        <div class="form-group">
          <input type="password" name="password" id="password" required>
          <label for="">Password</label>
        </div>
        <input type="submit" value="Sign in" id="btn-login">
  
        <br><br>
        <div style="max-width: 250px;" class="m-auto">
            <?php if (isset($errors['email'])) : ?>
                <li class="text-danger mt-2"><?= $errors['email'] ?></li>
            <?php endif; ?>
        </div>
        <div class="text-center">
          <p>Not a member? <a href="register">Register</a></p>
        </div>
      </form>
  </div>
</main>

<?php require base_path('views/partials/footer.php') ?>