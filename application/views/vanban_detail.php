<div class="body">

    <div id="pageDetail">
        <h1 id="pageDetailTitle">

            <a href="">Tin tức - sự kiện </a> »
            <?=$vanbanitems->so_ky_hieu_vb?>
        </h1>
        <h2><?=$vanbanitems->so_ky_hieu_vb?></h2>
        <strong>Nội dung: </strong><p><?=$vanbanitems->trich_yeu?></p>
         <ul style="margin-left: 20px;list-style: none">
            <?php foreach ($dinhkems as $dk): ?>
            <li>
                <i class="fa fa-paperclip" aria-hidden="true"></i>
                <?=attach($dk)?>
            </li>
            <?php endforeach?>
        </ul>
    </div>
    <div id="ctl10_ucLoadControl_ctl00_pnOther">

        <div class="otherNews">
            <h1>Các tin tức khác</h1>
            <?php foreach ($all as $vb): ?>
                <div class="newOtherItem">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                    <a href="<?=base_url('van-ban/' . $vb->slug . '.html')?>"><?=$vb->so_ky_hieu_vb?></a>
                    <span>(<?=$vb->date_created?>)</span>
                </div>
        <?php endforeach?>
            </div>

    </div>

</div>
