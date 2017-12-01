<style>
.panel{
	width: 100%!important;
}


.con{
	display: inline-flex;
}
.nopad{
	padding: 0px
}
.panelhk{
	padding: 0px;
	margin:0px!important;
	border-radius: 0px;
}
.panelhk .panel{
	padding: 0px!important;
}
.panelhk .panel-body{
	height: 100px;
	padding: 2px;
	text-align: center;
}
.hockyhead{
	background: #e67e22;
	color: #fff;
	font-weight: bold;
	height: 80px!important;
}
</style>
<div id="pageDetail">
	<h1 id="pageDetailTitle">

		Chương trình đào tạo ngành {{title}}
	</h1>
	<div class="pageDetailContent">
		<div class="row">
			<div class="col-md-2 nopad">
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
</div>
<script>
	var vm = new Vue({

		el: "#pageDetail",
		data () {
			return {
				base:'<?php echo base_url() ?>',
				title:"",
				dtid:'<?php echo $this->uri->segment(3) ?>',
				tinchi:[],
				total:0,
				max:0,
				sohocky:9,
				ctdt:{},
			};
		},
		methods: {
			gethocky() {
				this.$http.get(this.base+'nganhdaotao/apihocky',{params:{id:this.dtid}}).then(res => {
					this.ctdt=res.body;
				}).catch(err => {
					console.log(err);
				});
			},
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
			this.gethocky();
		}

	})
</script>