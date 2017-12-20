<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="<?=base_url('tintuc/add')?>" class="btn btn-primary">Thêm mới</a>
			</div>
			<div class="col-md-6">
				<form action="">
					<div id="imaginary_container">
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control" name="key" placeholder="Search" >
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
				<h2>Quản lý Tin tức</h2>
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

				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th style="width: 250px;">Tiêu đề</th>
							<th class="wordbreak">Mô tả</th>
							<th>Ngày tạo</th>
							<th>STT</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($tintucs as $tt): ?>

							<tr>
								<th scope="row"><?=$tt->id?></th>
								<td><?=$tt->tieude?></td>
								<td><?=$tt->mota?></td>
								<td><?=date("d/m/Y", strtotime($tt->date_created))?></td>
								<td><?=$tt->stt?></td>
								<td>
									<a href="<?=base_url('tintuc/update/' . $tt->id)?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
									<a class="btn btn-danger btn-xs btn-xoa" data-id="<?=$tt->id?>"><i class="fa fa-trash"></i></a>
									<a href="<?=base_url('tintuc/detail/' . $tt->id)?>" class="btn btn-success btn-xs" data-id="<?=$tt->id?>"><i class="fa fa-eye"></i></a>
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
						url: '<?=base_url('tintuc/delete')?>',
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

