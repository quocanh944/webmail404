<!DOCTYPE html>
<html lang='en'>
<head>
  <?php
        require(base_path("views/admin/partials/head.php"));
  ?>


  <title>User Detail</title>

  <!-- Own css for each page -->

</head>

<body class='sb-nav-fixed'>
  <?php
    require(base_path("views/admin/partials/dashboard-head.php"));
    ?>
        <div class="card-body">
            <div class="container mt-5">
              <h1>User Detail</h1>
              <hr>
              <!-- User Info Form -->
              <form id="user-form">
                <div class="mb-3">
                  <label for="email" class="form-label">Email address</label>
                  <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                  <label for="name" class="form-label">Full name</label>
                  <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                  <label for="password" class="form-label">Password</label>
                  <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                  <label for="confirm-password" class="form-label">Confirm password</label>
                  <input type="password" class="form-control" id="confirm-password" name="confirm-password" required>
                </div>
                <div class="mb-3">
                  <label for="role" class="form-label">Role</label>
                  <select class="form-select" id="role" name="role" required>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                  </select>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-secondary" onclick="window.history.back()">Cancel</button>
              </form>
            </div>
        </div>

    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>

  <?php
        require(base_path("views/admin/partials/footer.php"));
  ?>
</body>

</html>
