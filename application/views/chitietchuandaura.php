<div id="pageDetail">
	<h1 id="pageDetailTitle">

		Chuẩn đầu ra ngành  »  <?=$chuandauras->ten_nganh?>
	</h1>
	<div class="pageDetailContent">
				<object data="<?=base_url($chuandauras->chuandaura)?>" type="application/pdf" width="100%" height="500px">
				<p><b>Trình duyệt của bạn không hỗ trợ xem pdf <a href="<?=base_url($chuandauras->chuandaura)?>">Download PDF</a>.</p>
				</object>
	</div>
</div>