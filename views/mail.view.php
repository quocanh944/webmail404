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
                <div class="d-flex custom-control custom-checkbox ps-3 gap-4">
                    <a href="/">
                        <i title="Back" class="fa-sharp fa-solid fa-arrow-left"></i>
                    </a>
                    <a class="border-0" id="btnDeleteMail">
                        <i title="Send to trash" class="fa-solid fa-trash"></i>
                    </a>
                    <a class="border-0" id="btnStarMail">
                        <i title="Not Starred" onclick="changeStarred(9)" class="fa text-warning fa-star-o" style="cursor: pointer;" aria-hidden="true"></i>
                    </a>
                    <a class="border-0" id="btnStarMail">
                        <i title="More" class="fas fa-ellipsis-vertical"></i>                    
                    </a>
                </div>
            </div>
            <!-- <table class="table email-table no-wrap table-hover v-middle mb-0 font-14">
                <tbody>
                    <?php foreach ($all_mails as $value) : ?>
                        <tr class="<?php echo array_key_exists('is_read', $value) ? ($value['is_read'] ? '' : 'table-secondary') : '' ?>">
                            <td class="ps-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="cst7" />
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
                            <td> <a class="text-decoration-none"><span class="font-light text-dark"> <?php echo $value['label'] ?> </span> </a></td>
                            <td class="text-muted font-light"><?php echo $value['created_at'] ?></td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table> -->
            <div class="w-100 justify-content-between mt-3">
                <div class="h-50 row pb-3" name="">
                    <div class="Avt senderAvt float-start col-2 col-lg-1 col-md-1" name="icon senderAvt">
                        <!-- <i class="fas fa-face-grin-wide"></i> -->
                        <img class="w-10" style="width: 80%;" name="AvtImg" src="https://lh3.googleusercontent.com/a/AGNmyxbkwapR5Z_hESgH298AGgENVZQ4mmciSdZ5C4IiMg=s192-c-rg-br100" alt="">
                    </div>
                    <div class="col-8 senderInfo" name="senderInfo">
                        <span translate="no" class="qu" role="gridcell" tabindex="-1">
                            <span email="email@email.com" name="senderName" data-hovercard-id="" class="senderName">
                                <span class="fs-5 fw-bolder">name</span>
                            </span> 
                            <span class="go fw-lighter"><span aria-hidden="true">&lt;</span>
                                <?php echo $mail['sent_by'] ?>
                            <span aria-hidden="true">&gt;</span>
                        </span> 
                        <div class="to fw-lighter" name="to">to: me, abc@example.com</div>
                    </div>
                    <div class="time col-2" name="time">
                        <?php echo $mail['created_at'] ?>
                    </div>
                </div>
                <div class="containMail offset-lg-1" name="contentMail">
                    <?php echo $mail['content'] ?>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(() => {
        $('#btnDeleteMail').click((e) => {
            console.log('btnDeleteMail', e)
        })
    })
</script>

<?php
require('partials/footer.php')
?>