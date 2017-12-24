<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="<?=base_url('vanban/add')?>" class="btn btn-primary">Thêm mới</a>
			</div>
			<div class="col-md-6">
				<form action="">
					<div id="imaginary_container">
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control" name="key" value="<?=$this->input->get('key')?>" placeholder="Search" >
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
				<?php $this->load->view('partial/alert');?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý Văn bản điều hành</h2>
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
							<th>#</th>
							<th style="width: 150px;">Số ký hiệu VB</th>
							<th style="width: 270px;">Trích yêu</th>
							<th>STT</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($vanbans as $vb): ?>

							<tr>
								<th scope="row"><?=$vb->id?></th>
								<td><?=$vb->so_ky_hieu_vb?></td>
								<td><?=$vb->trich_yeu?></td>
								<td><?=$vb->stt?></td>
								<td>
									<a data-toggle="tooltip" title="Sửa thông tin văn bản"  href="<?=base_url('vanban/update/' . $vb->id)?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
									<button data-toggle="tooltip" title="Xóa văn bản" class="btn btn-danger btn-xs btn-xoa" data-id="<?=$vb->id?>"><i class="fa fa-trash"></i></button>
								</td>
							</tr>
						<?php endforeach?>

					</tbody>
				</table>
<?php echo $paginator ?>
			</div>
		</div>
	</div>
</div>
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
						url: '<?=base_url('vanban/delete')?>',
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

