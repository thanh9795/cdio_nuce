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
							<input type="file" class="form-control" id="" placeholder="Input field">
						</div>
					
					
						<button type="submit" class="btn btn-primary">Upload</button>
					</form>
				</div>
				<div class="col-md-3">
					<div v-if="file!=null">
						<object :data="this.base+file" type="application/pdf" width="100%" height="100%">
						   <p><b>Example fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="/pdf/sample-3pp.pdf">Download PDF</a>.</p>
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
		methods: {
		  uploadFile () {
		    alert();
		  },
		  getFile(){
		  	this.$http.get(this.base+'Qd_chuandaura/api',data, options).then(res => {
		  		this.file=res.body.file;
		  	  console.log(res);
		  	}).catch(err => {
		  	  console.log(err);
		  	});
		  }
		}
	
	})
</script>

