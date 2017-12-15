<style>
.dragArea{
	min-height: 400px;
	background: #ecf0f1;
	padding-top: 10px;
	padding-bottom: 10px;
}


.mygrid-wrapper-div {
	overflow: scroll;
	height: 500px;
	width: 200px;
}
.panel{
	width: 100%!important;
}

.panel-body{
	height: 78px;
}
.con{
	width: 150px;
	display: inline-flex;
	padding-right: 10px;
	padding-left: 10px;
}
.nopad{
	padding: 0px;
}
.decuong{
	position: absolute;
}
</style>
<div class="container" id="ctdtao">
	<div class="modal fade" id="modal-decuong">
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
	<div class="row">
		<div class="col-md-3 col-sm-3 col-xs-12">
			<form action="">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<input type="text" v-model="key" class="form-control" name="key" placeholder="Nhập mã môn hoặc tên môn học" >
						<span class="input-group-addon">
							<button type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</div>
			</form>
			<p>Danh sách các môn học</p>
			<div class="mygrid-wrapper-div" style="width: 255px !important;">
				<draggable v-model="monhocs" class="dragArea" :options="{group:'monhoc'}" >
					<div v-for="item in monhocs" style="width: 220px;text-align: center;margin: 0 auto;">
						<div class="panel panel-default" style="margin-bottom: 5px;">
							<div class="panel-heading">
								{{item.ma_mon}} - {{item.ten_mon}} - {{item.so_tin_chi}}
							</div>

						</div>
					</div>
				</draggable>
			</div>
		</div>
		<div class="col-md-9 col-sm-9 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2><small><a href="<?=base_url('nganhdaotao')?>">Ngành đào tạo /</a></small> Chương trình đào tạo</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li><a class="close-link"><i class="fa fa-close"></i></a>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">

					<div class="col-xs-2">
						<!-- required for floating -->
						<!-- Nav tabs -->
						<ul class="nav nav-tabs tabs-left">
							<li v-for="(item,index) in ctdt['so_hoc_ky']" :class="{'active':index==0}">
								<a :href="'#hocki'+item" data-toggle="tab">Học kỳ {{item}}</a>
							</li>

						</ul>
					</div>

					<div class="col-xs-10">
						<!-- Tab panes -->
						<div class="tab-content">
							<div v-for="(item,index) in ctdt['so_hoc_ky']" class="tab-pane" :class="{'active':index==0}" :id="'hocki'+item">
								<p class="lead">Học kỳ {{item}} <small>({{tinchi[item-1]}} tín chỉ)</small></p>
								<draggable v-model="ctdt['hocki'+item]" class="dragArea dra-content" :options="{group:'monhoc'}">
									<div v-for="item in ctdt['hocki'+item]" class="con">
										<div class="panel panel-default">
											<div class="panel-heading" style="position: relative;">
												{{item.ma_mon}} - {{item.so_tin_chi}}
												<div class="decuong">
													<button @click="OpenDecuong(item)" type="button" class="btn btn-default btn-xs">Đề cương</button>
												</div>
											</div>
											<div class="panel-body">
												{{item.ten_mon}}
											</div>
										</div>
									</div>
								</draggable>
							</div>

						</div>
					</div>

					<div class="clearfix"></div>

				</div>
			</div>
		</div>


		<div class="col-md-4">
			<button type="button" @click="save" class="btn btn-default">Lưu</button>
			<a @click="showCTDT" class="btn btn-primary" data-toggle="modal" href='#modal-id'>Xem trước CTĐT</a>
			<div class="modal fade" style="" id="modal-id">
				<div class="modal-dialog" style="width: 90%">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">Chương trình đào tạo </h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-md-1 nopad">
									<div class="panel panel-default panelhk">
										<div class="panel-body hockyhead">
											Tổng
											<p>({{total}} tín chỉ)</p>
										</div>
									</div>
									<div v-for="item in max" class="panel panel-default panelhk">
										<div class="panel-body" >
											{{item}}
										</div>
									</div>
								</div>
								<div class="col-md-1 nopad" v-for="item in ctdt['so_hoc_ky']">
									<div class="panel panel-default panelhk">
										<div class="panel-body hockyhead">
											Học kỳ {{item}}
											<p> STC: {{tinchi[item-1]}}</p>
										</div>
									</div>
									<div v-for="item in ctdt['hocki'+item]" class="panel panel-default panelhk">
										<div class="panel-body" :style="{background:item.bg,color:item.color}">
											<p style="text-decoration: underline;">{{item.ma_mon}} - {{item.so_tin_chi}}</p>
											{{item.ten_mon}}
										</div>
									</div>
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

	</div>
</div>



<script>
	var vm = new Vue({

		http: {
			emulateJSON: true,
			emulateHTTP: true
		},
		el: "#ctdtao",
		data () {
			return {
		   		type:1,
		  	link:"",
		  		id_monhoc:0,
		    	monhoc:"",
		    	decuongs:[],
				tinchi:[],
				total:0,
				max:0,
				key:"",
				sohocky:9,
				dtid:'<?php echo $this->uri->segment(3) ?>',
				base:'<?php echo base_url() ?>',
				ctdt:{},
				monhocs:[],

			};
		},
		methods: {
			getDecuong(){
			let data={
				id_monhoc:this.id_monhoc,
				id_nganh:this.dtid
			};
		  	this.$http.get(this.base+'Highdecuong/index/',{params:data}).then(res => {
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
		  OpenDecuong(item){
				$("#modal-decuong").modal("show");
				this.monhoc=item.ten_mon;
				this.id_monhoc=item.id;
		  		this.getDecuong();

			},

		  SaveFiles(){
		  	NProgress.start()
		  	if (this.type==1) {
		  		let data={
		  			id_monhoc:this.id_monhoc,
		  			id_nganh:this.dtid,
		  			type:this.type,
		  			link:this.link
		  		}
		  		this.$http.post(this.base+'Highdecuong/add', data).then(response => {
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
 				formData.append('id_monhoc',this.id_monhoc);
 				formData.append('id_nganh',this.dtid);
 				var self=this;
				this.$http.post(this.base+'Highdecuong/add', formData).then(response => {
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
		  },

			gethocky() {
				this.$http.get(this.base+'nganhdaotao/apihocky',{params:{id:this.dtid}}).then(res => {
					console.log(res);
					this.ctdt=res.body;
				}).catch(err => {
					console.log(err);
				});
			},
			showCTDT(){
				/*this.ctdt=[this.hocki1,this.hocki2,this.hocki3,this.hocki4,this.hocki5,this.hocki6,this.hocki7,this.hocki8,this.hocki9];*/
			},
			getMonHoc(key) {
				let data={
					id:this.dtid,
					key:key
				};
				this.$http.get(this.base+'monhoc/api',{params:data}).then(res => {
					console.log(res);
					this.monhocs=res.body;
				}).catch(err => {
					console.log(err);
				});
			},
			save () {
				let hocky={
					dtid:this.dtid,
					ctdt:this.ctdt
				};
				this.$http.post(this.base+'Nganhdaotao/saveCTDT',hocky).then(response => {
					swal({
						icon:'success',
						text:"Lưu thành công"

					})
				}, response => {
				// error callback
			});
			},
			saveinBack () {
				let hocky={
					dtid:this.dtid,
					ctdt:this.ctdt
				};
				this.$http.post(this.base+'Nganhdaotao/saveCTDT',hocky).then(response => {


				}, response => {
				// error callback
			});
			}
		},
		watch: {
			key: function (val) {
				this.getMonHoc(val);

			},
			monhocs:function (val) {
				this.saveinBack();
			},
			ctdt: {
				handler(val){
					var self=this;
					var mau=["#27ae60","#e74c3c","#f1c40f","#9b59b6","#34495e","#f39c12"];
					var index=0;
					var monhocs=[];
					var total=0;
					self.total=0;
					self.max=0;
						self.tinchi=[];
					val.so_hoc_ky.forEach(function (item) {
						var totalki=0;
						self.max=val['hocki'+item].length>self.max?val['hocki'+item].length:self.max;
						//self.max=val['hocki'+item].length>self.max?val['hocki'+item].length:self.max;
						val['hocki'+item].forEach(function (item2) {
							monhocs.push(item2);
							totalki+=parseInt(item2.so_tin_chi);
							monhocs.forEach(function (mh) {
								if (item2.ma_hoc_phan_tien_quyet==mh.ma_mon) {
									if (mh.bg==null) {

										item2.bg=mau[index];
										item2.color="#fff";
										mh.color="#fff";

										mh.bg=mau[index++];
									}else{
										item2.bg=mh.bg;
										item2.color=mh.color;
									}
								}
							});
						});
						self.tinchi.push(totalki);
						self.total+=totalki;
					});
					console.log(monhocs);
				},
				deep: true
			}

		},
		created(){
			this.getMonHoc();
			this.gethocky();

		}

	})
</script>