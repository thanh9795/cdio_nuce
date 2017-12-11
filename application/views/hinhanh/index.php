<div class="row" id="hinhanh">
	<div class="col-md-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý hình ảnh</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">

				<div class="row">
					<a class="btn btn-primary" @click="addHinhanh" data-toggle="modal" href='#modal-add'>Thêm mới</a>
					<div class="modal fade" id="modal-add">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title">Thêm mới hình ảnh</h4>
								</div>
								<form @submit.prevent="savehinhanh" action="" method="POST" role="form">
									<div class="modal-body">
										<div class="form-group">
											<label for="">Mô tả</label>
											<textarea name="" v-model="mota" id="" cols="30" rows="10" class="form-control"></textarea>
										</div>
										<div class="form-group">
											<label for="">Liên kết đến</label>
											<input type="text" v-model="linkto" class="form-control" id="" >
										</div>
										<div class="form-group">
											<div class="radio">
												<label>
													<input type="radio" v-model="type" id="input" value="1" checked="checked">
													Link
												</label>
											</div>
											<div class="radio">
												<label>
													<input type="radio" v-model="type" id="input" value="2" checked="checked">
													Upload
												</label>
											</div>
										</div>


										<div v-if="type==1" class="form-group">
											<label for="">Đường link ảnh</label>
											<span v-if="!vali" class="label label-warning">Đường dẫn ảnh chưa hợp lệ</span>
											<span v-else class="label label-success">Hợp lệ</span>
											<input type="text" v-model="link" class="form-control" id="">
										</div>

										<div v-else class="form-group">
											<label for="">Chọn file ảnh </label>
											<input type="file" class="form-control" id="fileUpload" placeholder="Input field">
										</div>

										

									</div>
									<div class="modal-footer">
										<div v-if="edit">
											<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
											<button type="submit" :disabled="!vali" class="btn btn-primary">Cập nhật</button>
										</div>
										<div v-else>
											<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
											<button type="submit" :disabled="!vali" class="btn btn-primary">Thêm mới</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<p>Các hình ảnh hiện thị ở trang chủ (Kéo thả để sắp xếp thứ tự ảnh)</p>
					
					<draggable :list="list" class="dragArea">
						<div v-for="(item,index) in list" class="col-md-55">
							<div class="thumbnail">
								<div class="image view view-first">
									<img style="width: 100%; display: block;" :src="item.link" alt="image">
									<div class="mask">
										<p>Ảnh {{index+1}}</p>
										<div class="tools tools-bottom">
											<a href="#"><i class="fa fa-link"></i></a>
											<a href="#" @click.prevent="editHinhanh(item)"><i class="fa fa-pencil"></i></a>
											<a href="#" @click.prevent="deleteHinhanh(item)"><i class="fa fa-times"></i></a>
										</div>
									</div>
								</div>
								<div class="caption">
									<p>{{item.mota}}</p>
								</div>
							</div>
						</div>
					</draggable>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	var vm = new Vue({
		http: {
			emulateJSON: true,
			emulateHTTP: true
		},
		el: "#hinhanh",
		data () {
			return {
				editid:0,
				edit:false,
				mota:"",
				linkto:"",
				vali:false,
				base:'<?= base_url() ?>',
				link:"",
				type:1,
				list:[]
			};
		},
		created(){
			this.getHinhanh();
		},
		methods: {
			addHinhanh(){
				this.edit=false;
				this.type=1;
				this.link="";
				this.mota="";
				this.linkto="";
			},
			getHinhanh(){
				this.$http.get(this.base+'Hinhanh/apiHinhanh').then(res => {
					console.log(res);
					this.list=res.body;
				}).catch(err => {
					console.log(err);
				});
			},
			editHinhanh(item){
				this.type=1;
				$("#modal-add").modal("show");
				this.edit=true;
				this.mota=item.mota;
				this.linkto=item.linkto;
				if (item.type==2) {
					this.link=this.base+item.link;
				}else{
					this.link=item.link;
				}
				this.editid=item.id;
			},
			deleteHinhanh(item){
				var self=this;
				swal({
					icon:'info',
					text:'Bạn có muốn xóa hình ảnh này',
					buttons:['Hủy',"Xóa"],
				}
				).then(function (rs) {
					if (rs) {
						let data={
							id:item.id
						};
						self.$http.post(self.base+'Hinhanh/delete',data).then(res => {
						  console.log(res);
						  self.getHinhanh();
						}).catch(err 	=> {
						  console.log(err);
						});
					}
				});
				
			},
			savehinhanh(){
				if (!this.edit) {
					if (this.type==1) {
						let data={
							type:this.type,
							mota:this.mota,
							link:this.link,
							linkto:this.linkto,
						};
						this.$http.post(this.base+'Hinhanh/save',data).then(res => {
							console.log(res);
							$("#modal-add").modal("hide");
							this.getHinhanh();
						}).catch(err => {
							console.log(err);
						});
					}else{
						var formData = new FormData();
						var file=$('#fileUpload')[0].files[0];
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
						formData.append('mota',this.mota);
						formData.append('linkto',this.linkto);
						this.$http.post(this.base+'Hinhanh/save',formData).then(res => {
							console.log(res);
							if (res.body.code=="success") {
								swal({
									icon:'success',
									text:res.body.message
								});
								$("#modal-add").modal("hide");
								this.getHinhanh();
							}else{
								swal({
									icon:'error',
									text:res.body.message
								});
							}

						}).catch(err => {
							console.log(err);
						});
					}
				}else{
					if (this.type==1) {
						let data={
							type:this.type,
							mota:this.mota,
							link:this.link,
							linkto:this.linkto,
						};
						this.$http.post(this.base+'Hinhanh/update/'+this.editid,data).then(res => {
							console.log(res);
							$("#modal-add").modal("hide");
							this.getHinhanh();
						}).catch(err => {
							console.log(err);
						});
					}else{
						var formData = new FormData();
						var file=$('#fileUpload')[0].files[0];
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
						formData.append('mota',this.mota);
						formData.append('linkto',this.linkto);
						this.$http.post(this.base+'Hinhanh/update/'+this.editid,formData).then(res => {
							console.log(res);
							$("#modal-add").modal("hide");
							this.getHinhanh();
						}).catch(err => {
							console.log(err);
						});
					}
				}
			},
			add: function(){
				this.list.push({name:'Juan'});
			},
			replace: function(){
				this.list=[{name:'Edgard'}]
			}
		},
		watch: {
			link: function (val) {
				this.$http.get(this.base+'Hinhanh/checklink',{params:{link:val}}).then(res => {
					console.log(res);
					this.vali=res.body.img;

				}).catch(err => {
					console.log(err);
				});
			},
			
			list: function (val) {
				let data={hinhanh:val};
				this.$http.post(this.base+'Hinhanh/luusapxep',data).then(res => {
				  console.log(res);
				}).catch(err => {
				  console.log(err);
				});
			},
			
			type:function(val) {
				if (val==2) {
					this.vali=true;
				}else{
					this.$http.get(this.base+'Hinhanh/checklink',{params:{link:val}}).then(res => {
						console.log(res);
						this.vali=res.body.img;

					}).catch(err => {
						console.log(err);
					});
				}
			}
		},

	})
</script>