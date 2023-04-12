<!DOCTYPE html>
<html lang='en'>

<head>

  <?php
      require(base_path("views/admin/partials/head.php"));
  ?>

  <title>Admin Settings</title>
  
  <!-- Own css for each page -->
</head>

<body class='sb-nav-fixed'>
   <?php
        require(base_path("views/admin/partials/dashboard-head.php"));
    ?>
            <div class="card-body">
              <div class="conner">
                <h1 class="my-4">Bad Keywords Management</h1>
                <form>
                  <div class="mb-3">
                    <label for="keywordInput" class="form-label">Add Keyword</label>
                    <input type="text" class="form-control" id="keywordInput" name="keywordInput">
                  </div>
                  <button type="submit" class="btn btn-primary mb-3">Add</button>
                </form>
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">Keyword</th>
                      <th scope="col">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Viagra</td>
                      <td>
                        <button type="button" class="btn btn-danger">Delete</button>
                      </td>
                    </tr>
                    <tr>
                      <td>Casino</td>
                      <td>
                        <button type="button" class="btn btn-danger">Delete</button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>


  <script>
    include("/js/scripts.js")
    </script>

  <?php
      require(base_path("views/admin/partials/footer.php"));
  ?>
    
</body>

</html>
