<div class="row" id="chuandaura">
	<div class="col-md-12">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Quyết định chuẩn đầu ra</h3>
			</div>
			<div class="panel-body">
				<div class="col-md-3">
					<form @submit.prevent="uploadFile" action="" method="POST" role="form">
						<legend>Upload chuẩn đầu ra</legend>
					
						<div class="form-group">
							<label for="">Chọn file upload <small>(định dạng pdf)</small></label>
							<input type="file" class="form-control" id="fileUpload" placeholder="Input field">
						</div>
					
					
						<button type="submit" class="btn btn-primary">Upload</button>
					</form>
				</div>
				<div class="col-md-9">
					<div v-if="file!=null">
						<object :data="this.base+file" type="application/pdf" width="100%" height="500px">
						   <p><b>Lỗi</b> Trình duyệt không hỗ trợ xem file pdf <a :href="this.base+file">Tải xuống</a>.</p>
						</object>

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
		el: "#chuandaura",
		data () {
		  return {
		    file:"",
		    base:'<?php echo base_url() ?>'
		  };
		},
		created(){
			this.getFile();
		},
		methods: {
		  uploadFile () {
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
			this.$http.post(this.base+'Qd_chuandaura/add',formData).then(res => {
			  if (res.body.code=="success") {
				swal({
					icon:'success',
					text:res.body.message
				});
				this.getFile();
			}else{
				swal({
					icon:'error',
					text:res.body.message
				});
			}
			}).catch(err => {
			  console.log(err);
			});
		  },
		  getFile(){
		  	this.$http.get(this.base+'Qd_chuandaura/api').then(res => {
		  		this.file=res.body.file;
		  	  console.log(res);
		  	}).catch(err => {
		  	  console.log(err);
		  	});
		  }
		}
	
	})
</script>

