<div class="body">

    <div id="pageDetail">
        <h1 id="pageDetailTitle">

            <a href="">Tin tức - sự kiện </a> »
            <?=$tintucitems->tieude?>
        </h1>
        <p><?=$tintucitems->chi_tiet?></p>
    </div>
    <div id="ctl10_ucLoadControl_ctl00_pnOther">

        <div class="otherNews">
            <h1>Các tin tức khác</h1>
            <?php foreach ($all as $tt): ?>
                <div class="newOtherItem">
                    <a href=""><?=$tt->tieude?></a>
                    <span>(<?=$tt->date_created?>)</span>
                </div>
        <?php endforeach?>
            </div>

    </div>

</div>
