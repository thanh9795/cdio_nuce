<div class="row">
	<div class="col-md-12">
		<h2>Quyết định CTĐT</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Nội dung</div>
			<div class="panel-body">
				<form action="" method="post" id="form">
			<fieldset>
				<div>
					<textarea id="noidung" name="noidung">
						<?=$qdctdt->noidung?>
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
		if(CKEDITOR.instances['noidung']) {
			CKEDITOR.remove(CKEDITOR.instances['noidung']);
		}
		CKEDITOR.config.width = 1045;
		CKEDITOR.config.height = 700;
		CKEDITOR.replace('noidung',{});
	})
</script>

