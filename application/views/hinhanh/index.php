
	<div id="body">
	<h2>Cách tích hợp CKFinder vào CodeIgniter</h2>
	<form action="" method="post" id="form">
	<fieldset>
		<legend>Sử dụng CKFinder trên CodeIgniter project</legend>
		<div>
		<span class="right"><textarea id="txt_content" name="txt_content"  style="width:100%; height:200px;"></textarea></span>
		</div>
		<div><input type="submit" id="save" value="Submit" /></div>
	</fieldset>
	</form>
	</div>

<script type="text/javascript">
$(function() {
var editor = CKEDITOR.replace('txt_content',
{
filebrowserBrowseUrl : '<?php echo base_url() . "public/ckfinder/ckfinder.html"; ?>',
filebrowserImageBrowseUrl : '<?php echo base_url() . "public/ckfinder/ckfinder.html?Type=Images"; ?>',
filebrowserFlashBrowseUrl : '<?php echo base_url() . "public/ckfinder/ckfinder.html?Type=Flash" ?>',
filebrowserUploadUrl : '<?php echo base_url() . "public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files" ?>',
filebrowserImageUploadUrl : '<?php echo base_url() . "public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images"; ?>',
filebrowserFlashUploadUrl : '<?php echo base_url() . "ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash"; ?>',
filebrowserWindowWidth : '800',
filebrowserWindowHeight : '480'
});
CKFinder.setupCKEditor( editor, "<?php echo base_url() . 'public/ckfinder/' ?>" );
})
</script>