<!DOCTYPE html>
<html lang='en'>

<head>
  
  <?php
        require(base_path("views/admin/partials/head.php"));
  ?>
  <title>User Management</title>
  <!-- Own css for each page -->
  <link rel="stylesheet" href="../assets/dist/css/user-table.css">

</head>

<body class='sb-nav-fixed'>
  <?php
    require(base_path("views/admin/partials/dashboard-head.php"));
    ?>
        <div class="card-body">
          <div class="table-responsive">
              <div class="table-wrapper">
              <div class="table-title bg-dark text-white">
                  <div class="row">
                  <div class="col-sm-5">
                      <h2>User <b>Management</b></h2>
                  </div>
                  <div class="col-sm-7">
                      <a type="button" class="btn btn-success" data-bs-toggle="modal"
                      data-bs-target="#addEmployeeModal"><i class="material-icons">&#xE147;</i> <span>Add New
                          User</span></a>
                  </div>
                  </div>
              </div>
              <!-- <table class="table table-striped table-hover">
              <thead>
                  <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Role</th>
                      <th>Status</th>
                      <th>Action</th>
                  </tr>
              </thead>
              <tbody>
                <?php foreach ($all_users as $index => $user) { ?>
                    <tr class="text-start">
                        <td><?php echo $index + 1 ?></td>
                        <td><?php echo $user['name'] ?></td>
                        <td><?php echo $user['email'] ?></td>
                        <td><span class="status <?php echo $user['role'] === 'admin' ? 'text-danger' : 'text-primary' ?>">&bull; </span><?php echo ucfirst($user['role']) ?></td>
                        <td><?php echo 'Available' ?></td>
                        <td class="d-flex">
                          <a href="/user-edit?id=<?php echo $user['email'];?>" class="settings" style="cursor:pointer" title="Edit" data-toggle="tooltip">
                              <i class="material-icons">&#xE8B8;</i>
                          </a>

                          <a class="delete" style="cursor:pointer" title="Delete" data-toggle="tooltip" onclick="delUser('<?php echo (strval($user['email'])); ?>')">
                              <i class="material-icons">&#xE5C9;</i>
                          </a>

                          <?php if (in_array($user['email'], array_column($locked_users, 'email'))) { ?>
                              <a class="unlock" style="cursor:pointer" title="Unlock" data-toggle="tooltip" onclick="unlockUser('<?php echo (strval($user['email'])); ?>')">
                                  <i class="material-icons">lock_open</i>
                              </a>
                          <?php } else { ?>
                              <a class="lock" style="cursor:pointer" title="Lock" data-toggle="tooltip" onclick="lockUser('<?php echo (strval($user['email'])); ?>')">
                                  <i class="material-icons">lock</i>
                              </a>
                          <?php } ?>
                      </td>                       
                    </tr>
                <?php } ?>
              </tbody>
          </table> -->
          <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($all_users as $index => $user) { ?>
                    <tr class="text-start">
                        <td><?php echo $index + 1 ?></td>
                        <td><?php echo $user['name'] ?></td>
                        <td><?php echo $user['email'] ?></td>
                        <td><span class="status <?php echo $user['role'] === 'admin' ? 'text-danger' : 'text-primary' ?>">&bull; </span><?php echo ucfirst($user['role']) ?></td>
                        <td>
                            <?php if (in_array($user['email'], array_column($locked_users, 'email'))) { ?>
                                <span class="badge bg-danger">Locked</span>
                            <?php } else { ?>
                                <span class="badge bg-success">Available</span>
                            <?php } ?>
                        </td>
                        <td class="d-flex">
                            <a href="/user-edit?id=<?php echo $user['email']; ?>" class="settings" style="cursor:pointer" title="Edit" data-toggle="tooltip">
                                <i class="material-icons">&#xE8B8;</i>
                            </a>
                            <a class="delete" style="cursor:pointer" title="Delete" data-toggle="tooltip" onclick="delUser('<?php echo strval($user['email']); ?>')">
                                <i class="material-icons">&#xE5C9;</i>
                            </a>
                              <?php if (in_array($user['email'], array_column($locked_users, 'email'))) { ?>
                                  <a class="unlock" style="cursor:pointer" title="Unlock" data-toggle="tooltip" onclick="unlockUser('<?php echo strval($user['email']); ?>')">
                                      <i class="material-icons">lock_open</i>
                                  </a>
                              <?php } else { ?>
                                  <a class="lock" style="cursor:pointer" title="Lock" data-toggle="tooltip" onclick="lockUser('<?php echo strval($user['email']); ?>')">
                                      <i class="material-icons">lock</i>
                                  </a>
                              <?php } ?>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

              <div class="clearfix">
                    <div class="hint-text">
                        Showing <b><?php echo ($pageSize * $page + 1) . " - " . ($pageSize * $page + $pageSize <= $count ? $pageSize * $page + $pageSize : $count) ?></b> out of <b><?php echo $count ?></b> entries
                    </div>
                    <ul class="pagination">
                        <div class="d-flex gap-3 me-3 align-items-center">
                          <a class="text-dark btn" href="?page=<?php echo ($page) ?>&pageSize=<?php echo ($pageSize) ?>">
                              <i class="fa fa-arrow-circle-left fs-4"></i>
                          </a>
                          <span class="fs-5"><?php echo $page + 1; ?></span>
                          <a class="text-dark btn" href='<?php if ($pageSize * $page + $pageSize < $count) {
                                          echo "?page=" . ($page + 2) . "&pageSize=$pageSize";
                                      } else {
                                          echo "javascript:void(0)";
                                      } ?>'>
                              <i class="fa fa-arrow-circle-right fs-4"></i>
                          </a>
                      </div>
                    </ul>
                </div>
              </div>
          </div>
      </div>
    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>

  <!-- Add Modal HTML -->
  <div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form>
          <div class="modal-header">
            <h4 class="modal-title">Add User</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Email</label>
                  <input id="email" type="email" class="form-control" name="email" required>
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input id="password" type="password" class="form-control" name="password" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Name</label>
                  <input id="name" type="text" class="form-control" name="name" required>
                </div>
                <div class="form-group">
                  <label>Role</label>
                  <select id="role" class="form-control" name="role">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- <div class="form-group">
              <label>Avatar</label>
              <input type="file" class="form-control" name="avatar">
            </div> -->
          </div>
          <div class="modal-footer">
            <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
            <input id="btnAddUser" type="button" class="btn btn-success" value="Add">
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- Edit Modal HTML -->
  <div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <form>
          <div class="modal-header">
            <h4 class="modal-title">Edit Employee</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Name</label>
              <input type="text" class="form-control" required>
            </div>
            <div class="form-group">
              <label>Email</label>
              <input type="email" class="form-control" required>
            </div>
            <div class="form-group">
              <label>Address</label>
              <textarea class="form-control" required></textarea>
            </div>
            <div class="form-group">
              <label>Phone</label>
              <input type="text" class="form-control" required>
            </div>
          </div>
          <div class="modal-footer">
            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
            <input type="submit" class="btn btn-info" value="Save">
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- Delete Modal HTML -->
  <div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <form>
          <div class="modal-header">
            <h4 class="modal-title">Delete Employee</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          </div>
          <div class="modal-body">
            <p>Are you sure you want to delete these Records?</p>
            <p class="text-warning"><small>This action cannot be undone.</small></p>
          </div>
          <div class="modal-footer">
            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
            <input type="submit" class="btn btn-danger" value="Delete">
          </div>
        </form>
      </div>
    </div>
  </div>

  <div id="modalAddSuccess" class="modal fade">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addUserSuccessModalLabel">Add User Success</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          User has been added successfully.
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>



  <!-- Own script import here  -->
  <script src="../assets/dist/js/admin-index.js"></script>
  <script src="../assets/dist/js/User.js"></script>

  

  <?php
      require(base_path("views/admin/partials/footer.php"));
  ?>
</body>

</html>
