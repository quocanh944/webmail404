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
                <?php
                  // Gán giá trị cho thuộc tính title của từng ô input
                  $maxRecipientsTitle = "Enter the maximum number of recipients allowed per email.";
                  $maxSizeTitle = "Enter the maximum email size allowed in MB.";
                  $maxAttachmentsTitle = "Enter the maximum number of attachments allowed per email.";
                  $maxAttachmentSizeTitle = "Enter the maximum size of each attachment allowed in MB.";
                  ?>
                <form>
                  <div class="mb-3">
                    <label for="maxRecipientsInput" class="form-label">Max recipients per email</label>
                    <input type="number" class="form-control" id="maxRecipientsInput" name="maxRecipientsInput" min="1"
                      max="100" required data-bs-toggle="tooltip" title="<?php echo "Your current settiing " . $settings['max_recipients']; ?>">
                  </div>

                  <div class="mb-3">
                    <label for="maxSizeInput" class="form-label">Max email size (MB)</label>
                    <input type="number" class="form-control" id="maxSizeInput" name="maxSizeInput" min="1" max="100" required data-bs-toggle="tooltip" data-bs-placement="top" title="<?php echo "Your current setting " . $settings['max_email_size'];; ?>">
                  </div>

                  <div class="mb-3">
                    <label for="maxAttachmentsInput" class="form-label">Max attachments per email</label>
                    <input type="number" class="form-control" id="maxAttachmentsInput" name="maxAttachmentsInput" min="1" max="10" required data-bs-toggle="tooltip" data-bs-placement="top" title="<?php echo "Your current setting " . $settings['max_attachments'];; ?>">
                  </div>

                  <div class="mb-3">
                    <label for="maxAttachmentSizeInput" class="form-label">Max attachment size (MB)</label>
                    <input type="number" class="form-control" id="maxAttachmentSizeInput" name="maxAttachmentSizeInput" min="1" max="50" required data-bs-toggle="tooltip" data-bs-placement="top" title="<?php echo "Your current settiing " . $settings['max_attachment_size'];; ?>">
                  </div>

                  <button type="button" id="btnSaveSetting" class="btn btn-dark">Save</button>
                </form>
              </div>
            </div>
    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>

  <?php
      require(base_path("views/admin/partials/footer.php"));
  ?>

  <script src="../assets/dist/js/admin-setting.js"></script>
    
</body>

</html>
