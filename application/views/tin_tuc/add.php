
<div class="row" id="demo">
	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<?=validation_errors()?>
			</div>
		<?php endif?>
		<?php $this->load->view('partial/alert');?>
		<div class="x_panel">
			<div class="x_title">
				<h2><small><a href="<?=base_url('tintuc')?>">Tin tức /</a></small> Thêm mới tin tức</h2>
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
				<form method="POST" class="form-horizontal form-label-left">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tiêu đề (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="tieude" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mô tả</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea id="mota" name="mota" style="width:100% !important;">

							</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chi tiết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea id="chi_tiet" name="chi_tiet">

							</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số thứ tự</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">
							Đính kèm <br>
							<button @click="addfile" type="button" class="btn btn-default btn-xs"><i class="fa fa-plus"></i></button>
						</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="input-group" v-for="(item,index) in dinhkem">
						      <input name="dinhkems[]" type="text" :id="'tbx'+index" readonly="" class="form-control">
						      <span class="input-group-btn">
						        <button class="btn btn-default btn-pick" :data-textbox="'tbx'+index" type="button">Chọn file</button>
						      </span>
						    </div>
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
<script type="text/javascript">
	$(function() {
	if(CKEDITOR.instances['chi_tiet']) {
	CKEDITOR.remove(CKEDITOR.instances['chi_tiet']);
}
CKEDITOR.config.width = 750;
CKEDITOR.config.height = 300;
CKEDITOR.replace('chi_tiet',{});
});
	$(document).ready(function() {
		/*$(".btn-pick").click(function(event) {
			selectFileWithCKFinder($(this).data('textbox'));
		});*/
		$(document).on('click', '.btn-pick', function(event) {
			event.preventDefault();
			selectFileWithCKFinder($(this).data('textbox'));

			/* Act on the event */
		});
		function selectFileWithCKFinder( elementId ) {
			CKFinder.popup( {
				chooseFiles: true,
				width: 800,
				height: 600,
				onInit: function( finder ) {
					finder.on( 'files:choose', function( evt ) {
						var file = evt.data.files.first();
						var output = document.getElementById( elementId );
						output.value = file.getUrl();
					} );

					finder.on( 'file:choose:resizedImage', function( evt ) {
						var output = document.getElementById( elementId );
						output.value = evt.data.resizedUrl;
					} );
				}
			} );
		}
	});

	var vm = new Vue({
	
		el: "#demo",
		data () {
		  return {
		    dinhkem:3,
		  };
		},
		methods: {
		  addfile () {
		  	if (this.dinhkem>=5) {
		  		swal({
		  			icon:'info',
		  			text:'Bạn chỉ được chọn tối đa 5 file'
		  		});
			  }else{
			    this.dinhkem++;
			  }
		  	}
		}
	
	})
</script>
