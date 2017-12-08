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
	height: 60px;
}
.con{
	display: inline-flex;
	padding-right: 10px;
	padding-left: 10px;
}
.nopad{
	padding: 0px
}
</style>
<div class="container" id="ctdtao">
	<div class="row">
		<div class="col-md-3 col-sm-3 col-xs-12">
			<form action="">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<input type="text" v-model="key" class="form-control" name="key" placeholder="Tìm kiếm theo tên ngành" >
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
					<h2>Chương trình đào tạo </h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a>
								</li>
								<li><a href="#">Settings 2</a>
								</li>
							</ul>
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
											<div class="panel-heading">
												{{item.ma_mon}} - {{item.so_tin_chi}}
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