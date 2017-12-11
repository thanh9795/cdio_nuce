<?php 
$data['title_page']="Chỉnh sửa thông tin cá nhân";
$this->load->view('partial/title', $data);
?>

<div id="profile" class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<?php 
		$this->load->view('partial/alert');
		?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Người dùng: <?=$this->session->userdata('hoten'); ?> </h2>
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
				<div class="row">
					<div class="col-md-5">
						<p>Click vào ảnh để chỉnh sửa ảnh đại diện</p>
						<input id="avatarfile" type="file" name="" style="width: 0px;height: 0px" id="">
						<img id="avaimg" style="cursor: pointer;" src="<?=$user->avatar==NULL?"https://image.freepik.com/free-icon/male-user-shadow_318-34042.jpg":base_url($user->avatar) ?>" style="" class="img-responsive img-thumbnail anhdaidien" alt="Image">
					</div>
					<div class="col-md-7">
						<form id="demo-form2" action="" method="POST" class="form-horizontal form-label-left">
							<input type="hidden" name="id" value="<?= $this->session->userdata('id'); ?>">
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Họ tên <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="text" minlength="5" maxlength="90" value="<?= $user->hoten ?>" id="tennhom" name="hoten" required="required"  class="form-control col-md-7 col-xs-12">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Email <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="email" value="<?= $user->email ?>" id="tennhom" name="email" required="required"  class="form-control col-md-7 col-xs-12">
								</div>
							</div>



							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
									<button class="btn btn-primary" type="reset">Reset</button>
									<button type="submit" class="btn btn-success">Cập nhật</button>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
		$("#demo-form2").submit(function(event) {
			event.preventDefault();
			$.ajax({
				url: '<?= base_url('user/update_profile') ?>',
				type: 'POST',
				data: $(this).serialize(),
			})
			.done(function(rs) {
				console.log(rs);
				var obj=JSON.parse(rs);
				if (obj.code=='success') {
					swal({
							text:"Cập nhật thông tin thành công",
							icon:'success'
						});
				}else{
					swal({
							title:"Lỗi",
							text:obj.message,
							icon:'error'
						});
				}
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			
		});
		
		$("#avaimg").click(function(event) {
			event.preventDefault();
			$("#avatarfile").trigger('click');
		});
		$("#avatarfile").change(function(event) {
			if (this.files.length>0) {
			console.log(this.files[0]);
				var formdata=new FormData();
				formdata.append('avatar',this.files[0]);
				$.ajax({
					url: '<?= base_url('user/uploadavatar') ?>',
					type: 'POST',
					data: formdata,
					contentType: false,
					processData: false
				})
				.done(function(rs) {
					var obj=JSON.parse(rs);
					if (obj.code=="success") {
						$(".anhdaidien").attr('src', '<?= base_url() ?>'+obj.img);
						swal({
							text:"Cập nhật ảnh đại diện thành công",
							icon:'success'
						});
					}else{
						swal({
							html:true,
							title:"Có lỗi xảy ra",
							text:obj.message,
							icon:'error'
						});
					}					
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
</script>