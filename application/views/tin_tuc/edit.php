<div class="row" id="tintuc">
	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

				<?=validation_errors()?>
			</div>
		<?php endif?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Form Basic Elements <small>different form elements</small></h2>
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
							<input type="text" name="stt" value="<?=$tintuc->stt?>" class="form-control" >
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Quản lý files</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="row">
								<div class="col-md-8">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>Kiểu</th>
												<th>Đường dẫn</th>
												<th>Ngày tạo</th>
												<th>Xóa</th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="(item,index) in decuongs">
												<td>{{item.type2}}</td>
												<td>
													<a :href="item.type==2?base+item.link:item.link">{{item.link|shorter}}</a>
												</td>
												<td>{{item.date_created}}</td>
												<td><button @click="deleteitem(item.id,index)" type="button" class="btn btn-default btn-xs"><i class="fa fa-trash"></i></button></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-4">
									<legend>Thêm mới tài liệu</legend>
									
									<div class="form-group">
										<label for="">Kiểu</label>
										<div class="radio">
											<label>
												<input type="radio" name="type" id="" value="1" v-model="type" checked="checked">
												Link
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" name="type" id="" value="2" v-model="type">
												Đính kèm
											</label>
										</div>
									</div>
									<div v-if="type==1">
										
										<div class="form-group">
											<label for="">Đường dẫn</label>
											<input type="text" v-model="link" class="form-control" id="" >
										</div>
										
									</div>
									<div v-else>
										<div class="form-group">
											<label for="">Chọn file upload</label>
											<input type="file"  class="form-control" id="fileDecuong" >
										</div>
										
									</div>
									
									
									
									
									<button type="button" @click="SaveFiles" class="btn btn-primary">Thêm mới</button>
								</div>
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
<script>
	var vm = new Vue({
		http: {
			emulateJSON: true,
			emulateHTTP: true
		},
		el: "#tintuc",
		data () {
			return {
				currentid:<?= $this->uri->segment(3) ?>,
				base:'<?= base_url() ?>',
				link:"",
				monhoc:"",
				type:1,
				decuongs:[]
			};
		},
		filters: {
			shorter: function (value) {
				if (!value) return ''
					value = value.toString()
				if (value.length>50) {

					return value.substr(0,50)+"...";
				}
				return value;
			}
		},
		created(){
			this.getDecuong(this.currentid);		
		},
		methods: {
			getDecuong(id){
				this.$http.get(this.base+'Tintuc_dinhkem/index/'+id).then(res => {
					console.log(res);
					this.decuongs=res.body;
				}).catch(err => {
					console.log(err);
				});
			},
			reset(){
				this.link="";
				this.type=1;
				$('#fileDecuong').val("");

			},
			deleteitem:function (id,index) {
				var self=this;
				
				swal({ title: "Thông báo",
					text: "Bạn có chắc chắn muốn đề cương: "+ self.decuongs[index].link,
					type: "warning",
					showCancelButton: true,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "Ok, xóa nó đi!",
					closeOnConfirm: false}).then(
					function(result) {
						if (result) {
							self.$http.post(self.base+'/Tintuc_dinhkem/delete', {id: self.decuongs[index].id}).then(response => {
								self.decuongs.splice(index,1);
								swal("Đã xóa!", "", "success")
							}, response => {
							    // error callback
							});
						}
					    // handle Confirm button click
					    // result is an optional parameter, needed for modals with input
					}, function(dismiss) {
					    // dismiss can be 'cancel', 'overlay', 'esc' or 'timer'
					}
					);
	 			 /*this.$http.post(this.base+'/hopgiaoban/delete', {id: id}).then(response => {
	 			 	this.lichgiaoban.splice(index,1);

				  }, response => {
				    // error callback
				});*/
			},	
			ShowListTailieu (id,tenmon) {
				this.currentid=id;
				this.getDecuong(id);
				this.monhoc=tenmon;
				$("#modal-show").modal("show");
			},
			SaveFiles(e){
				
				NProgress.start() 
				if (this.type==1) {
					let data={
						id_tintuc:this.currentid,
						type:this.type,
						link:this.link
					}
					this.$http.post(this.base+'/Tintuc_dinhkem/add', data).then(response => {
						console.log(response);
						this.getDecuong(this.currentid);
						NProgress.done();
						this.reset();
						swal({
							icon:response.body.code,
							text:response.body.message
						});
					}, response => {
				    // error callback
				});
				}else{
					var formData = new FormData();
					var file=$('#fileDecuong')[0].files[0];
					if (file!=null) {
						formData.append('fileattach',file) ;
					}else{
						swal({
							icon:'error',
							text:'Bạn phải chọn file trước khi upload'
						});
						return;
					}
					formData.append('type',this.type);
					formData.append('id_tintuc',this.currentid);
					var self=this;
					this.$http.post(this.base+'/Tintuc_dinhkem/add', formData).then(response => {
						console.log(response);
						NProgress.done() ;
						this.getDecuong(this.currentid);
						this.reset();
						swal({
							icon:response.body.code,
							text:response.body.message
						});
					}, response => {
				    // error callback
				});

				}
			}
		}
		
	})
</script>
