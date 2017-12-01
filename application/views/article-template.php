<div class="row">
	<div class="col-md-12">
		<h2>Cấu hình</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Nội dung trang chủ</div>
			<div class="panel-body">
				<form action="" method="post" id="form">
			<fieldset>
				<div>
					<textarea id="txt_content" name="txt_content">
						<?=$gioithieu->txt_content?>
					</textarea>

				</div>
				<div style="margin-top: 10px; text-align: right;">
					<input type="submit" class="btn btn-default" id="save" value="Save changes" /></div>
			</fieldset>
		</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		if(CKEDITOR.instances['txt_content']) {
			CKEDITOR.remove(CKEDITOR.instances['txt_content']);
		}
		CKEDITOR.config.width = 1045;
		CKEDITOR.config.height = 700;
		CKEDITOR.replace('txt_content',{});
	})
</script>

