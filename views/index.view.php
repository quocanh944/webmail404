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
                <div class="custom-control custom-checkbox ps-3">
                    <input type="checkbox" />
                </div>
                <div class="d-flex gap-3 me-3">
                    <div>
                        1 - 20 of 100
                    </div>
                    <button>
                        <i class="fa-solid fa-angle-left"></i>
                    </button>
                    <button>
                        <i class="fa-solid fa-angle-right"></i>
                    </button>
                </div>
            </div>
            <table class="table email-table no-wrap table-hover v-middle mb-0 font-14">
                <tbody>
                    <?php foreach ($all_mails as $value):?>
                        <tr>
                            <td class="ps-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="cst7" />
                                    <label class="custom-control-label" for="cst7">&nbsp;
                                    </label>
                                </div>
                            </td>
                            <td><i class="fa fa-star text-warning"></i></td>
                            <td> <span class="mb-0 text-muted font-light"><?php echo $user['email'] ?></span></td>
                            <td> <a class="text-decoration-none" href="javascript: void(0)"><span class="font-light text-dark"> <?php echo $value['label'] ?> </span> </a></td>
                            <td class="text-muted font-light"><?php echo $value['created_at'] ?></td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<?php
require('partials/footer.php')
?>