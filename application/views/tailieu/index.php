<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="<?=base_url('tailieu/add')?>" class="btn btn-primary">Thêm mới</a>
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
		<?php $this->load->view('partial/alert');?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý danh sách tài liệu</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
							<th style="width: 200px;">Tên tài liệu</th>
							<th style="width: 200px;">Mô tả</th>
							<th>Nhóm</th>
							<th style="width: 88px;">Lượt xem</th>
							<th style="width: 88px;">Lượt tải</th>

							<th>Ngày tạo</th>
							<th>Ngày sửa</th>
							<th>STT</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($tailieus as $vb): ?>

							<tr>
								<th scope="row"><?=$vb->id?></th>
								<td><?=$vb->ten_tai_lieu?></td>
								<td><?=$vb->mota?></td>
								<td><?=$vb->ten_nhom?></td>
								<td><?=$vb->luot_xem?></td>
								<td><?=$vb->luot_tai?></td>
								<td><?=date("d/m/Y", strtotime($vb->date_created))?></td>
								<td><?=date("d/m/Y", strtotime($vb->date_created))?></td>
								<td><?=$vb->stt?></td>
								<td>
									<a data-toggle="tooltip" title="Chỉnh sửa tài liệu" href="<?=base_url('tailieu/update/' . $vb->id)?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
									<button data-toggle="tooltip" title="Xóa tài liệu" class="btn btn-danger btn-xs btn-xoa" data-id="<?=$vb->id?>"><i class="fa fa-trash"></i></button>
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
						url: '<?=base_url('tailieu/delete')?>',
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

