<div id="pageDetail" style="padding-top: 20px;">
  <h1 id="pageDetailTitle">
Quyết định ban hành CTĐT
  </h1>
  <div class="pageDetailContent">
      <?php if ($qdctdts->noidung!=NULL): ?>
  		
  		<object data="<?=($qdctdts->noidung) ?>" type="application/pdf" width="100%" height="500px">
		   <p><b>Lỗi</b>: Trình duyệt không hỗ trợ xem pdf<a href="<?php echo base_url($qdctdts->noidung) ?>">Tải xuống PDF</a>.</p>
		</object>
	<?php else: ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong>Nội dung này chưa được cập nhật</strong> 
		</div>
  	<?php endif ?>
  </div>

</div>