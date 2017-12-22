<div class="row" id="tailieu">
	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

			<?=validation_errors()?>
		</div>
		<?php endif?>
		<?php if ($this->input->post('loai_link') == 2 && $this->upload->display_errors() != NULL): ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

			<?=$this->upload->display_errors()?>
		</div>
		<?php endif?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Thêm mới tài liệu</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<br>
				<form method="POST" class="form-horizontal form-label-left" enctype="multipart/form-data">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên tài liệu (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" value="<?=set_value('ten_tai_lieu')?>" name="ten_tai_lieu" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mô tả (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" value="<?=set_value('mota')?>" name="mota" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Loại link</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="checkbox">
								<label>
									<input type="radio" checked="" name="loai_link" value="1" class=" loai_link">
									Link
								</label>
							</div>

							<div class="checkbox">
								<label>
									<input type="radio" name="loai_link" value="2" class=" loai_link">
									File đính kèm
								</label>
							</div>
						</div>
					</div>
					<div v-if="link">
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Link tài liệu</label>
							<div class="col-md-9 col-sm-9 col-xs-12">
								<input type="text" value="<?=set_value('link_tai_lieu')?>" name="link_tai_lieu" class="form-control" >
							</div>
						</div>

					</div>
					<div v-else>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Chọn file đính kèm</label>
							<div class="col-md-9 col-sm-9 col-xs-12">
								<input type="file" name="file_tai_lieu"  class="form-control" >
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">STT</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" value="<?=set_value('stt')?>" name="stt" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Nhóm tài liệu</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<select name="ma_nhom" id="input" class="form-control" required="required">
								<option value=""></option>
								<?php foreach ($nhoms as $nhom): ?>
									<option <?=$this->input->post('ma_nhom') == $nhom->id ? "selected" : ""?>  value="<?=$nhom->id?>"><?=$nhom->ten_nhom?></option>
								<?php endforeach?>
							</select>
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button type="reset" class="btn btn-primary">Hủy</button>
							<button type="submit" class="btn btn-success">Lưu</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>
<script>
	var vm = new Vue({

		el: "#tailieu",
		data () {
			return {
				link:true,
			};
		}

	})
</script>