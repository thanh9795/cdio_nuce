<ol class="breadcrumb">
	<li>
		<a href="<?=base_url('tintuc')?>">Tin tức</a>
	</li>
	<li class="active"><?=$tintuc->tieude?></li>
</ol>
<div class="row" id="tintuc">
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
				<h2><small>Chỉnh sửa thông tin tin tức</small> số <?=$tintuc->id?></h2>
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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tiêu đề</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="tieude" value="<?=$tintuc->tieude?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mô tả</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea name="mota" id="" cols="30" rows="10" class="form-control"><?=$tintuc->mota?></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chi tiết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<!-- <input type="text" name="chi_tiet" value="<?=$tintuc->chi_tiet?>" class="form-control" > -->
							<textarea id="chi_tiet" name="chi_tiet">
								<?=$tintuc->chi_tiet?>
							</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số thứ tự</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" value="<?=$tintuc->stt?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">
							Đính kèm <br>
							<button @click="addfile" type="button" class="btn btn-default btn-xs"><i class="fa fa-plus"></i></button>
						</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="input-group" v-for="(item,index) in decuongs">
						      <input name="dinhkems[]" type="text" :value="item.link" :id="'tbx'+index" readonly="" class="form-control">
						      <span class="input-group-btn">
						        <button class="btn btn-default btn-pick" :data-textbox="'tbx'+index" type="button">Chọn file</button>
						        <button class="btn btn-danger" @click="deletefile(index)" type="button"><i class="fa fa-trash"></i></button>
						      </span>
						    </div>
						</div>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button type="reset" class="btn btn-primary" href="<?=base_url('tintuc')?>">Hủy</button>
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
		CKEDITOR.config.height = 200;
		CKEDITOR.replace('chi_tiet',{});
	})
</script>
<script type="text/javascript">

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
	
		el: "#tintuc",
		data () {
		  return {
		    dinhkem:3,
		    currentid:<?=$this->uri->segment(3)?>,
			base:'<?=base_url()?>',
			link:"",
			monhoc:"",
			type:1,
			decuongs:[]
		  };
		},
		methods: {
			deletefile(index){
				//alert(index);
				if (this.decuongs.length==1) {
					this.decuongs[0].link="";

				}else{
					this.decuongs.splice(index,1);
				}
				//this.decuongs[index]={};
			},
			getDecuong(id){
				this.$http.get(this.base+'Tintuc_dinhkem/index/'+id).then(res => {
					console.log(res);
					this.decuongs=res.body;
					if (this.decuongs.length==0) {
						this.decuongs.push({link:""});
					}
				}).catch(err => {
					console.log(err);
				});
			},
		  addfile () {
		  	if (this.decuongs.length>=5) {
		  		swal({
		  			icon:'info',
		  			text:'Bạn chỉ được chọn tối đa 5 file'
		  		});
			  }else{
				this.decuongs.push({link:""});
			  }
		  	}
		},
		created(){
			this.getDecuong(this.currentid);
		}
	
	})
</script>