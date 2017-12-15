<div class="body">

    <div id="pageDetail">
        <h1 id="pageDetailTitle">

            <a href="">Tin tức - sự kiện </a> »
            <?=$tintucitems->tieude?>
        </h1>
        <p><?=$tintucitems->chi_tiet?></p>
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
            <?php foreach ($all as $tt): ?>
                <div title="<?=$tt->tieude?>" class="newOtherItem">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                    <a href="<?=base_url('tin-tuc/' . $tt->slug . '.html')?>"><?=$tt->tieude?></a>
                    <span> (<?=date("d/m/Y", strtotime($tt->date_created))?>)</span>
                </div>
            <?php endforeach?>
        </div>

    </div>

</div>
