<button type="button" class="btn btn-primary w-100 my-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Compose Mail
</button>

<ul class="nav nav-pills flex-column mb-auto my-2">
    <li class="nav-item">
        <a href="/" class="nav-link <?php echo urlIs('/') ? "active" : '' ?>" aria-current="page">
            <i class="fa-solid fa-inbox text-center" style="width: 30px;"></i>
            Inbox <?php echo (urlIs('/123')) ?>
        </a>
    </li>
    <li>
        <a href="/starred" class="nav-link <?php echo urlIs('/starred') == 1 ? "active" : '' ?>">
            <i class="fa-regular fa-star text-center" style="width: 30px;"></i>
            Starred
        </a>
    </li>
    <li>
        <a href="/spam" class="nav-link <?php echo urlIs('/spam') == 1 ? "active" : '' ?>">
            <i class="fa-regular fa-exclamation text-center" style="width: 30px;"></i>
            Spam
        </a>
    </li>
    <li>
        <a href="/trash" class="nav-link <?php echo urlIs('/trash') == 1 ? "active" : '' ?>">
            <i class="fa-regular fa-trash-can text-center" style="width: 30px;"></i>
            Trash
        </a>
    </li>
    <li>
        <a href="/sent" class="nav-link <?php echo urlIs('/sent') ? "active" : '' ?>">
            <i class="fa-sharp fa-solid fa-paper-plane text-center" style="width: 30px;"></i>
            Sent
        </a>
    </li>
    <li>
        <a href="/draft" class="nav-link <?php echo urlIs('/draft') ? "active" : '' ?>">
            <i class="fa-sharp fa-solid fa-envelope-open text-center" style="width: 30px;"></i>
            Draft
        </a>
    </li>
</ul>