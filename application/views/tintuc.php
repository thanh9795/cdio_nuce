
<div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0;">
    <form action="">
        <div id="imaginary_container">
            <div class="input-group stylish-input-group">
                <input type="text" class="form-control" name="key" value="<?php echo $this->input->get('key') ?>" placeholder="Tìm kiếm theo tên tin tức" >
                <span class="input-group-addon">
                    <button type="submit">
                       <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                </span>
            </div>
        </div>
    </form>
</div>
<div id="newHome">
    <h1>
        <a href="<?=base_url('tintuc')?>">TIN TỨC - SỰ KIỆN</a>
    </h1>
    <div class="newList">
    	<?php foreach ($tintucs as $tintuc): ?>

       <div class="newItem">
       	<a class="itemTitle" href="<?=base_url('tin-tuc/' . $tintuc->slug . '.html')?>" title="<?php echo $tintuc->tieude ?>"><i class="fa fa-arrow-circle-right"></i> <?php echo $tintuc->tieude ?></a>
       	<div class="itemDes"><?php echo $tintuc->mota ?></div>
       </div>
    	<?php endforeach?>
      <?php echo $paginator ?>
    </div>

</div>