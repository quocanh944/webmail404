<!-- Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid justify-content-between">
        <!-- Left elements -->
        <div class="d-flex">
            <!-- Brand -->
            <a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="/">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/2560px-Gmail_icon_%282020%29.svg.png" height="20" alt="MDB Logo" loading="lazy" style="margin-top: 2px;" />
            </a>

            <!-- Search form -->
            <form class="input-group w-auto my-auto d-none d-sm-flex" method="GET" action="/search">
                <input name="key" autocomplete="off" type="search" class="form-control rounded" placeholder="Inbox:Label..." style="min-width: 125px;" />
                <button type="submit" class="border-0">
                    <span class="input-group-text border-0 d-none d-lg-flex"><i class="fas fa-search"></i></span>
                </button>
            </form>
        </div>
        <!-- Left elements -->

        <!-- Right elements -->
        <ul class="navbar-nav flex-row">
            <!-- Avatar -->
            <li class="nav-item dropdown position-relative">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="<?php echo isset($user['avatar']) ? $user['avatar'] : 'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000' ?>" class="rounded-circle" height="22" alt="Portrait of a Woman" loading="lazy" />
                </a>
                <ul class="dropdown-menu position-absolute top-42" aria-labelledby="dropdown04" style="left: -112px;">
                    <li>
                        <a class="dropdown-item" href="#">My profile</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="#">Settings</a>
                    </li>
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
        <!-- Right elements -->
    </div>
</nav>
<!-- Navbar -->