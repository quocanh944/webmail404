<nav class='sb-topnav navbar navbar-expand navbar-dark bg-dark'>
    <!-- Navbar Brand-->
    <a class='navbar-brand ps-3' href='index.html'>404 WebMail</a>
    <!-- Sidebar Toggle-->
    <button class='btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0' id='sidebarToggle' href='#!'><i
        class='fas fa-bars'></i></button>
    <!-- Navbar Search-->
    <form class='d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0'>
      <div class='text-white fs-5'><?php echo $_SESSION['user']['email']; ?></div>
    </form>
    <!-- Navbar-->
    <ul class='navbar-nav ms-auto ms-md-0 me-3 me-lg-4'>
      <li class='nav-item dropdown'>
        <a class='nav-link dropdown-toggle' id='navbarDropdown' href='#' role='button' data-bs-toggle='dropdown'
          aria-expanded='false'><i class='fas fa-user fa-fw'></i></a>
        <ul class='dropdown-menu dropdown-menu-end' aria-labelledby='navbarDropdown'>
          <li><a class='dropdown-item' href='#!'>Your profile</a></li>
          <!-- <li>
            <hr class='dropdown-divider' />
          </li> -->
          <li>
              <form method="POST" action="/session">
                  <input type="hidden" name="_method" value="DELETE" />
                  <!-- <button class="text-white">Log Out</button> -->
                  <button class="dropdown-item">Logout</button>
              </form>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
  <div id='layoutSidenav'>
    <div id='layoutSidenav_nav'>
      <nav class='sb-sidenav accordion sb-sidenav-dark' id='sidenavAccordion'>
        <div class='sb-sidenav-menu'>
          <div class='nav'>
            <div class='sb-sidenav-menu-heading'>Main</div>
            <a class='nav-link' href='/'>
              <div class='sb-nav-link-icon'><i class='fas fa-tachometer-alt'></i></div>
              Admin settings
            </a>
            <a class='nav-link' href='/user-list'>
              <div class='sb-nav-link-icon'><i class='fas fa-tachometer-alt'></i></div>
              User Management
            </a>
            <a class='nav-link' href='/bad-keyword'>
              <div class='sb-nav-link-icon'><i class='fas fa-tachometer-alt'></i></div>
              Checking Bad Keywords
            </a>
            <div class='collapse' id='collapsePages' aria-labelledby='headingTwo' data-bs-parent='#sidenavAccordion'>
              <nav class='sb-sidenav-menu-nested nav accordion' id='sidenavAccordionPages'>
                <a class='nav-link collapsed' href='#' data-bs-toggle='collapse' data-bs-target='#pagesCollapseAuth'
                  aria-expanded='false' aria-controls='pagesCollapseAuth'>
                  Authentication
                  <div class='sb-sidenav-collapse-arrow'><i class='fas fa-angle-down'></i></div>
                </a>
                <div class='collapse' id='pagesCollapseAuth' aria-labelledby='headingOne'
                  data-bs-parent='#sidenavAccordionPages'>
                  <nav class='sb-sidenav-menu-nested nav'>
                    <a class='nav-link' href='login.html'>Login</a>
                    <a class='nav-link' href='register.html'>Register</a>
                    <a class='nav-link' href='password.html'>Forgot Password</a>
                  </nav>
                </div>
                <a class='nav-link collapsed' href='#' data-bs-toggle='collapse' data-bs-target='#pagesCollapseError'
                  aria-expanded='false' aria-controls='pagesCollapseError'>
                  Error
                  <div class='sb-sidenav-collapse-arrow'><i class='fas fa-angle-down'></i></div>
                </a>
                <div class='collapse' id='pagesCollapseError' aria-labelledby='headingOne'
                  data-bs-parent='#sidenavAccordionPages'>
                  <nav class='sb-sidenav-menu-nested nav'>
                    <a class='nav-link' href='401.html'>401 Page</a>
                    <a class='nav-link' href='404.html'>404 Page</a>
                    <a class='nav-link' href='500.html'>500 Page</a>
                  </nav>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </nav>
    </div>
    <div id='layoutSidenav_content'>
      <main>
        <div class='container-fluid px-4'>
          <div class="card mb-4 mt-4">
            <!-- <div class="card-header">
              <i class="fas fa-table me-1"></i>
              User Table
            </div> -->
