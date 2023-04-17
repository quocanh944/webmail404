<?php require base_path('views/partials/head.php') ?>

<link rel="stylesheet" href="../assets/dist/css/login.css">

<main style="padding-top: 10%; padding-bottom: 10%">
  <div id="wrapper">
      <form class="" action="/session" method="POST">
        <h3>Đăng nhập</h3>
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
        <div class="text-center">
          <p>Not a member? <a href="register">Register</a></p>
        </div>
      </form>
  </div>
</main>

<?php require base_path('views/partials/footer.php') ?>