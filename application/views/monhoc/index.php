<div class="row" id="monhoc">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="<?=base_url('monhoc/add')?>" class="btn btn-primary">Thêm mới</a>
			</div>
			<div class="col-md-6">
				<form action="">
					<div id="imaginary_container">
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control" name="key" value="<?php echo $this->input->get('key') ?>" placeholder="Search" >
							<span class="input-group-addon">
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý các ngành đào tạo</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Mã môn</th>
							<th>Tên môn</th>
							<th>Số tín chỉ</th>
							<th>Số tiết lý thuyết</th>
							<th>Số tiết thực hành</th>
							<th>Mã môn học tiền quyết</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($monhocs as $vb): ?>

							<tr>
								<td scope="row"><?=$vb->ma_mon?></td>
								<td><?=$vb->ten_mon?></td>
								<td><?=$vb->so_tin_chi?></td>
								<td><?=$vb->so_tiet_ly_thuyet?></td>
								<td><?=$vb->so_tiet_thuc_hanh?></td>
								<td><?=$vb->ma_hoc_phan_tien_quyet?></td>
								<td>
									<button @click="ShowListTailieu(<?= $vb->id ?>,'<?=$vb->ten_mon?>')" class="btn btn-xs btn-default"><?= $vb->attachnumber>0?$vb->attachnumber:"" ?> Tài liệu</button>
									<a href="<?=base_url('monhoc/update/' . $vb->id)?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
									<button class="btn btn-danger btn-xs btn-xoa" data-id="<?=$vb->id?>"><i class="fa fa-trash"></i></button>
								</td>
							</tr>
						<?php endforeach?>

					</tbody>
				</table>
				<?php echo $paginator ?>
			</div>
		</div>
	</div>
	<div class="modal fade" id="modal-show">
		<div class="modal-dialog" style="width: 80%">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Danh sách tài liệu: {{monhoc}}</h4>
				</div>
				<div class="modal-body">
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
										<td>{{item.type}}</td>
										<td><a :href="item.link">{{item.link|shorter}}</a></td>
										<td>{{item.date_created}}</td>
										<td><button @click="deleteitem(item.id,index)" type="button" class="btn btn-default btn-xs"><i class="fa fa-trash"></i></button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-md-4">
							<form @submit.prevent="SaveFiles" action="" method="POST" role="form">
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
									
								
								
							
								<button type="submit" class="btn btn-primary">Thêm mới</button>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
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
		el: "#monhoc",
		data () {
		  return {
		  	currentid:0,
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
		methods: {
		  getDecuong(id){
		  	this.$http.get(this.base+'decuong/index/'+id).then(res => {
		  	  console.log(res);
		  	  this.decuongs=res.body;
		  	}).catch(err => {
		  	  console.log(err);
		  	});
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
	 						self.$http.post(self.base+'/decuong/delete', {id: self.decuongs[index].id}).then(response => {
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
		  SaveFiles(){
		  	NProgress.start() 
		  	if (this.type==1) {
		  		let data={
		  			id_monhoc:this.currentid,
		  			type:this.type,
		  			link:this.link
		  		}
		  		this.$http.post(this.base+'/decuong/add', data).then(response => {
					console.log(response);
		  			this.getDecuong(this.currentid);
		  			NProgress.done();
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
 				formData.append('id_monhoc',this.currentid);
 				var self=this;
				this.$http.post(this.base+'/decuong/add', formData).then(response => {
					console.log(response);
					NProgress.done() ;
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
<script>
	$(document).ready(function() {
		$(".btn-xoa").click(function(event) {
			var btnxoa=$(this);
			swal({
				icon:"info",
				buttons: ["Huy", "Xoa"],
			}).then(function (rs) {
				if (rs) {
					$.ajax({
						url: '<?=base_url('monhoc/delete')?>',
						type: 'POST',
						dataType: 'text',
						data: {id: btnxoa.data('id')},
					})
					.done(function() {
						swal({
							icon:'success'
						}).then(function () {
							location.reload();
						})
						console.log("success");
					})
					.fail(function() {
						console.log("error");
					})
					.always(function() {
						console.log("complete");
					});


				}
			});
		});
	});
</script>

