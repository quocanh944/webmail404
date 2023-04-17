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
              <form id="user-form" autocomplete="off">
                <div class="mb-3">
                  <label for="email" class="form-label">Email address</label>
                  <input type="email" value="<?php echo $user['email'] ?>" class="form-control" id="email" readonly name="email" required>
                </div>
                <div class="mb-3">
                  <label for="name" class="form-label">Full name</label>
                  <input type="text" value="<?php echo $user['name'] ?>" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                  <label for="confirm-password" class="form-label">Confirm password</label>
                  <input type="password" class="form-control" id="confirm-password" name="confirm-password" required>
                </div>
                <div class="mb-3">
                  <label for="role" class="form-label">Role</label>
                  <select class="form-select" id="role" name="role" required>
                    <option value="user" <?php echo ($user['role'] == 'user') ? 'selected' : ''; ?>>User</option>
                    <option value="admin" <?php echo ($user['role'] == 'admin') ? 'selected' : ''; ?>>Admin</option>
                  </select>
                </div>
                <button id="btnSave" type="button" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-secondary">Cancel</button>
              </form>
            </div>
        </div>

    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>

  <?php
        require(base_path("views/admin/partials/footer.php"));
  ?>

  <script>    
    // Đăng ký sự kiện kiểm tra mật khẩu khi gửi form
    // var form = document.getElementById("user-form");
    // form.addEventListener("submit", function(event) {
    //   if (!validatePassword()) {
    //     event.preventDefault();
    //   }
    // });
  </script>
  <script src="../assets/dist/js/user-edit.js"></script>
  <script src="../assets/dist/js/Validation.js"></script>
  <script src="../assets/dist/js/User.js"></script>
</body>

</html>
