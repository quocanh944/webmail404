<!DOCTYPE html>
<html lang='en'>

<head>

  <?php
      require(base_path("views/admin/partials/head.php"));
  ?>

  <title>Bad Keywords</title>
  
  <!-- Own css for each page -->
</head>

<body class='sb-nav-fixed'>
   <?php
        require(base_path("views/admin/partials/dashboard-head.php"));
    ?>
            <div class="card-body">
              <div class="conner">
                <h1 class="my-4">Bad Keywords Management</h1>
                <form id="addKeywordForm">
                  <div class="mb-3">
                    <label for="keywordInput" class="form-label">Add Keyword</label>
                    <input type="text" class="form-control" id="keywordInput" name="keywordInput" placeholder="Input keyword" required>
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
                    <?php foreach ($keywords as $keyword) { ?>
                      <tr>
                        <td><?php echo $keyword['content']; ?></td>
                        <td>
                          <button type="button" class="btn btn-danger" onclick="deleteKeyword(<?php echo $keyword['ID']; ?>)">Delete</button>
                        </td>
                      </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>
    <?php
        require(base_path("views/admin/partials/dashboard-footer.php"));
    ?>

  <?php
      require(base_path("views/admin/partials/footer.php"));
  ?>


<script>
  $(document).ready(function() {
    // Xử lý sự kiện submit của form
    $('#addKeywordForm').submit(function(event) {
      // Ngăn chặn sự kiện submit mặc định của form
      event.preventDefault();

      // Lấy dữ liệu từ input field
      var keyword = $('#keywordInput').val();

      // Gửi dữ liệu đến server bằng AJAX
      $.ajax({
        type: 'POST',
        url: '/bad-keyword',
        data: { keyword: keyword },
        success: function(response) {
          response = JSON.parse(response)
          if (response.success) {
            var newRow = '<tr><td>' + keyword + '</td><td><button type="button" class="btn btn-danger">Delete</button></td></tr>';
            $('table tbody').append(newRow);
            window.location.reload();
          }
          else {
            alert("Add failed")
            return
          }
        }
      });

      // Xóa nội dung trong input field sau khi thêm keyword
      $('#keywordInput').val('');
    });
  });

  function deleteKeyword(keywordID) {
    if (confirm("Are you sure you want to delete this keyword?")) {
      $.ajax({
        url: "/bad-keyword?id=" + keywordID,
        type: "DELETE",
        success: function(response) {
          // Reload the page
          response = JSON.parse(response)
          if (response.success) {
            console.log(response.success)
            location.reload()
          }
          else {
            alert("Delete failed")
            return
          }
        },
      });
    }
  }




</script>
    
</body>

</html>
