<!-- <footer class="footer">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6">
        <nav class="d-flex">
          <ul class="m-0 p-0">
            <li><a href="#">Home</a></li>
            <li><a href="#">company</a></li>
            <li><a href="#">portfolio</a></li>
            <li><a href="#">Blogs</a></li>
            <ul>
        </nav>
      </div>

      <div class="col-md-6">
        <p class="copyright d-flex justify-content-end">
          &copy 2021 Design By
          <a href="#">Vishweb Design</a>Bootstrap Admin Template
        </p>
      </div>
    </div>
  </div>

</footer> -->
</div>
</div>



<!----------html code compleate----------->


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"
  integrity="sha512-a6ctI6w1kg3J4dSjknHj3aWLEbjitAXAjLDRUxo2wyYmDFRcz2RJuQr5M3Kt8O/TtUSp8n2rAyaXYy1sjoKmrQ=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"
  integrity="sha512-nnzkI2u2Dy6HMnzMIkh7CPd1KX445z38XIu4jG1jGw7x5tSL3VBjE44dY4ihMU1ijAQV930SPM12cCFrB18sVw=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"
  integrity="sha512-+NqPlbbtM1QqiK8ZAo4Yrj2c4lNQoGv8P79DPtKzj++l5jnN39rHA/xsqn8zE9l0uSoxaCdrOgFs6yjyfbBxSg=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"
  integrity="sha512-M+qMI1PHRcYcOpJzeJlaWbVVx2JJyPIwZas8or7dc97LZOokjvbpfRxymhVtlJLyjiF3wGyr0FJOA4DLONLVLw=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script type="text/javascript">
$(document).ready(function() {
  $("#sidebar-collapse").on('click', function() {
    $('#sidebar').toggleClass('active');
    $('#content').toggleClass('active');
  });

  $(".more-button,.body-overlay").on('click', function() {
    $('#sidebar,.body-overlay').toggleClass('show-nav');
  });

});
</script>






</body>

</html>
