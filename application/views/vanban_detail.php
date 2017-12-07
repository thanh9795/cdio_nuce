<div class="body">

    <div id="pageDetail">
        <h1 id="pageDetailTitle">

            <a href="">Tin tức - sự kiện </a> »
            <?=$vanbans->so_ky_hieu_vb?>
        </h1>
        <h2><?=$vanbans->so_ky_hieu_vb?></h2>
        <strong>Nội dung: </strong><p><?=$vanbans->trich_yeu?></p>
    </div>
    <div id="ctl10_ucLoadControl_ctl00_pnOther">

        <div class="otherNews">
            <h1>Các tin tức khác</h1>
            <?php foreach ($all as $vb): ?>
                <div class="newOtherItem">
                    <a href=""><?=$vb->so_ky_hieu_vb?></a>
                    <span>(<?=$vb->date_created?>)</span>
                </div>
        <?php endforeach?>
            </div>

    </div>

</div>
