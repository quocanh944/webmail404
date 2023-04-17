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
                        <i title="Change Starred" onclick="changeStarred(<?php echo $mail['id'] ?>)" class="fa text-warning <?php echo $mail['is_starred'] == 1 ? "fa-star" : "fa-star-o" ?>" style="cursor: pointer;" aria-hidden="true"></i>
                    </a>
                    <a class="border-0" id="btnSpam">
                        <i title="Move to spam" class="fa-solid fa-exclamation"></i>                    
                    </a>
                </div>
            </div>
            <div class="fs-4 text-center text-uppercase fw-bolder"><?php echo$mail['label']?></div>
            <div class="w-100 justify-content-between mt-3">
                <div class="h-50 row pb-3" name="">
                    <div class="Avt senderAvt float-start col-2 col-lg-1 col-md-1" name="icon senderAvt">
                        <img class="w-75 rounded-circle" name="AvtImg" src="<?php echo $mail['avatar'] ?>" alt="">
                    </div>
                    <div class="col-8" >
                        <span>
                            <span class="senderName">
                                <span class="fs-5 fw-bolder"><?php echo $mail['name'] ?></span>
                            </span> 
                            <span><span aria-hidden="true">&lt;</span>
                                <?php echo $mail['sent_by'] ?>
                            <span aria-hidden="true">&gt;</span>
                        </span> 
                        <div>to: me, <?php echo implode(',', $sent_to) ?></div>
                        <div>cc: <?php echo implode(',', $cc) ?></div>
                        <?php
                            if (count($bcc) > 0) {
                                echo "<div>bcc: me</div>";
                            }
                        ?>
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

    $(() => {
        $('#btnDeleteMail').click((e) => {
            console.log('btnDeleteMail', e)
        });
    })
    
</script>
<?php
require('partials/scriptCompose.php')
?>
<?php
require('partials/footer.php')
?>