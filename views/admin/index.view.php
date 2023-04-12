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
              <div class="container my-4">
                <h1 class="mb-4">Admin Settings</h1>
                <form>
                  <div class="mb-3">
                    <label for="maxRecipientsInput" class="form-label">Max recipients per email</label>
                    <input type="number" class="form-control" id="maxRecipientsInput" name="maxRecipientsInput" min="1"
                      max="100" required>
                  </div>
                  <div class="mb-3">
                    <label for="maxSizeInput" class="form-label">Max email size (MB)</label>
                    <input type="number" class="form-control" id="maxSizeInput" name="maxSizeInput" min="1" max="100"
                      required>
                  </div>
                  <div class="mb-3">
                    <label for="maxAttachmentsInput" class="form-label">Max attachments per email</label>
                    <input type="number" class="form-control" id="maxAttachmentsInput" name="maxAttachmentsInput"
                      min="1" max="10" required>
                  </div>
                  <div class="mb-3">
                    <label for="maxAttachmentSizeInput" class="form-label">Max attachment size (MB)</label>
                    <input type="number" class="form-control" id="maxAttachmentSizeInput" name="maxAttachmentSizeInput"
                      min="1" max="50" required>
                  </div>
                  <button type="submit" class="btn btn-dark">Save</button>
                </form>
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
