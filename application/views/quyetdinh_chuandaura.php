<div class="row" id="chuandaura">
	<div class="col-md-12">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Quyết định chuẩn đầu ra</h3>
			</div>
			<div class="panel-body">
				<div class="col-md-5">
					<label for="">Chọn file chuẩn đầu ra <small>(định dạng pdf)</small></label>
					<form @submit.prevent="saveFile" action="">
						<div class="input-group">
						  <input type="text" v-model="file" class="form-control" id="filepdf" placeholder="" aria-describedby="basic-addon2">
						  <span id="uploadbtn" class="input-group-addon" id="basic-addon2"><i class="fa fa-upload"></i> Upload</span>
						</div>
						<button type="submit" class="btn btn-success">Lưu</button>
					</form>

					<!-- <form @submit.prevent="uploadFile" action="" method="POST" role="form">
						<legend>Upload chuẩn đầu ra</legend>
					
						<div class="form-group">
							<label for="">Chọn file upload <small>(định dạng pdf)</small></label>
							<input type="file" class="form-control" id="fileUpload" placeholder="Input field">
						</div>
					
					
						<button type="submit" class="btn btn-primary">Upload</button>
					</form> -->
				</div>
				<div class="col-md-7">
					<div v-if="file!=null">
						<object :data="file" type="application/pdf" width="100%" height="500px">
						   <p><b>Lỗi</b> Trình duyệt không hỗ trợ xem file pdf <a :href="this.base+file">Tải xuống</a>.</p>
						</object>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$("#uploadbtn").click(function(event) {
			/* Act on the event */
			selectFileWithCKFinder("filepdf");

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
						var ext=file.getUrl().split(".")
						ext=ext[ext.length-1];
						if (ext==="pdf") {

							vm.file=file.getUrl();
						}else{
							swal({
								icon:'info',
								text:'Định dạng yêu cầu là file pdf'
							});
						}
						//output.value = file.getUrl();
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
			saveFile(){
				let data={
					path:this.file
				}
				this.$http.post(this.base+'Qd_chuandaura/saveFile',data).then(res => {
					swal({
						icon:'success',
						text:'Lưu thành công'
					});
				  console.log(res);
				}).catch(err => {
				  console.log(err);
				});
			},
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

