<?php
require('partials/head.php')
?>
<?php
require('partials/nav.php')
?>

<div class="ms-3">
    <div class="row me-0">
        <div class="col-2">
            <?php
            require('partials/sidebar.php')
            ?>
        </div>
        <div class="col-10">
            <div class="w-100 d-flex justify-content-between mt-3">
                <div class="d-flex custom-control custom-checkbox ps-3 ">
                    <input class="float-start checkbox checkall" type="checkbox" name="checkbox checkall" onchange="showOption()" />
                    <a class="d-flex ps-3 gap-4 border-0 btnDeleteMail" id="btnDeleteMail">
                        <i title="Send to trash" class="fa-solid fa-trash btnDeleteMail"></i>
                    </a>
                    <a class="border-0 d-flex ps-3 gap-4 btnSpam" id="btnSpam">
                        <i title="Move to spam" class="fa-solid fa-exclamation btnSpam"></i>
                    </a>
                </div>

                <div class="d-flex gap-3 me-3">
                    <div>
                        <?php echo ($pageSize * $page + 1) . " - " . ($pageSize * $page + $pageSize <= $count ? $pageSize * $page + $pageSize : $count) . " of $count" ?>
                        <!-- <?php var_dump($_GET)?> -->
                    </div>
                    <a href="?<?php echo isset($_GET['url']) && $_GET['url'] == 'search' ? "key=" . $_GET['key'] . "&" : ''?>page=<?php echo ($page) ?>&pageSize=<?php echo ($pageSize) ?>">
                        <i class="fa-solid fa-angle-left"></i>
                    </a>
                    <a href='?<?php echo isset($_GET['url']) && $_GET['url'] == 'search' ? "key=" . $_GET['key'] . "&" : ''?><?php if ($pageSize * $page + $pageSize < $count) {
                                    echo "page=" . ($page + 2) . "&pageSize=$pageSize";
                                } else {
                                    echo "javascript:void(0)";
                                } ?>'>
                        <i class="fa-solid fa-angle-right"></i>
                    </a>
                </div>
            </div>
            <table class="table email-table no-wrap table-hover v-middle mb-0 font-14">
                <tbody>
                    <?php foreach ($all_mails as $value) : ?>
                        <tr class="<?php echo array_key_exists('is_read', $value) ? ($value['is_read'] ? '' : 'table-secondary') : '' ?>">
                            <td class="ps-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input checkbox" id="cst7" onchange="showOption()" />
                                    <label class="custom-control-label" for="cst7">&nbsp;
                                    </label>
                                </div>
                            </td>
                            <td>
                                <i onclick="changeStarred(<?php echo $value['id'] ?>)" class='fa text-warning <?php echo $value['is_starred'] == 1 ? "fa-star" : "fa-star-o" ?>' style="cursor: pointer;">
                                </i>
                            </td>
                            <td>
                                <span class="mb-0 text-muted font-light">
                                    <?php echo !urlIs('/sent') ? $value['sent_by'] : '' ?>
                                </span>
                            </td>
                            <td>
                                <a class="text-decoration-none" href="mail?id=<?php echo $value['id'] ?>">
                                    <span class="font-light text-dark">
                                        <?php echo $value['label'] ?>
                                    </span>
                                </a>
                            </td>
                            <td class="text-muted font-light">
                                <?php echo $value['created_at'] ?>
                            </td>
                            <td>
                                <a class="options" href="#" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-vertical"></i>
                                </a>
                                <ul class="dropdown-menu position-absolute top-42" aria-labelledby="dropdown04" style="left: -112px;">
                                    <li>
                                        <a class="dropdown-item" href="#">Reply</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" style="cursor: pointer;" onclick="moveToSpam(<?php echo $value['id'] ?>)">Move to Spam</a>
                                    </li>
                                    <li>
                                        <?php if (urlIs('/trash')) { ?>
                                            <a class="dropdown-item" style="cursor: pointer;" onclick="deleteMail(<?php echo $value['id'] ?>)">Delete Mail</a>
                                        <?php } else { ?>        
                                            <a class="dropdown-item" style="cursor: pointer;" onclick="moveToTrash(<?php echo $value['id'] ?>)">Move to Trash</a>
                                        <?php } ?>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" style="cursor: pointer;" onclick="markUnRead(<?php echo $value['id'] ?>)">Mark as Unread</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php require('partials/modalCompose.php') ?>
<script>
    const changeStarred = (mailId) => {
        $.ajax('/changeStarred', {
            method: 'post',
            data: {
                'mailId': mailId
            },
            success: (data, status) => {
                // console.log(status);
                window.location.reload();
            }
        })
    }

    const markUnRead = (mailId) => {
        $.ajax('/markUnRead', {
            method: 'post',
            data: {
                'mailId': mailId
            },
            success: (data, status) => {
                window.location.reload();
            }
        })
    }

    const moveToTrash = (mailId) => {
        $.ajax('/moveToTrash', {
            method: 'post',
            data: {
                'mailId': mailId
            },
            success: (data, status) => {
                window.location.reload();
            }
        })
    }

    const moveToSpam = (mailId) => {
        $.ajax('/moveToSpam', {
            method: 'post',
            data: {
                'mailId': mailId
            },
            success: (data, status) => {
                window.location.reload();
            }
        })
    }

    const deleteMail = (mailId) => {
        $.ajax('/deleteMail', {
            method: 'post',
            data: {
                'mailId': mailId
            },
            success: (data, status) => {
                window.location.reload();
            }
        })
    }

    $(document).ready(function() {
        $(".btnDeleteMail").hide();
        $(".btnSpam").hide();

        // check all only
        $(".checkall").change(function() {
            $('.checkbox').not(this).prop('checked', this.checked);
            if (!$(".checkbox").is(":checked")) {
                $(".btnDeleteMail").hide();
                $(".btnSpam").hide();
            }
        });
    });

    function showOption() // any checkbox
    {
        if ($(".checkbox").is(":checked")) {
            $(".btnDeleteMail").show();
            $(".btnSpam").show();
        } else {
            $(".btnDeleteMail").hide();
            $(".btnSpam").hide();
        }
    }
</script>

<?php require('partials/scriptCompose.php') ?>

<?php
require('partials/footer.php')
?>
