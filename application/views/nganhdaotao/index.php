<div class="row" id="chuongtrinhdaotao">

	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="<?=base_url('nganhdaotao/add')?>" class="btn btn-primary">Thêm mới</a>
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
		<div class="row">
			<?php $this->load->view('partial/alert');?>
		</div>
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý các ngành đào tạo</h2>
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
							<th>Mã Ngành</th>
							<th class="wordbreak">Tên ngành</th>
							<th>STT</th>
							<th>Số học kỳ</th>
							<th>Cập nhật cuối</th>
							<th>T/g cập nhật cuối</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($nganhdaotaos as $vb): ?>

							<tr>
								<th scope="row"><?=$vb->ma_nganh?></th>
								<td><?=$vb->ten_nganh?></td>
								<td><?=$vb->stt?></td>
								<td><?=$vb->so_hoc_ky?></td>
								<td><?=$vb->hoten?></td>
								<td><?=date('d/m/Y', strtotime($vb->last_update))?></td>
								<td>

									<a href="<?=base_url('nganhdaotao/chuongtrinhdaotao/' . $vb->id)?>" class="btn btn-success btn-xs"><i class="fa fa-server" aria-hidden="true"></i></a>
									<a href="<?=base_url('nganhdaotao/update/' . $vb->id)?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
									<button class="btn btn-danger btn-xs btn-xoa" data-id="<?=$vb->id?>"><i class="fa fa-trash"></i></button>
									<?php if ($vb->chuandaura != NULL): ?>

									<a class="btn btn-primary btn-xs" data-toggle="modal" href='#modal-id<?=$vb->id?>'><i class="fa fa-graduation-cap" aria-hidden="true"></i></a>
									<div class="modal fade" id="modal-id<?=$vb->id?>">
										<div class="modal-dialog" style="width:80%">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h4 class="modal-title"><?=$vb->ten_nganh?></h4>
												</div>
												<div class="modal-body">
													<?php if ($vb->chuandaura != NULL): ?>

														<object data="<?=($vb->chuandaura)?>" type="application/pdf" width="100%" height="500px">
													   <p><b>Trình duyệt của bạn không hỗ trợ xem pdf <a href="<?=($vb->chuandaura)?>">Download PDF</a>.</p>
													</object>
													<?php else: ?>
														<div class="alert alert-danger">
															<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
															<strong>Ngành này chưa có chuẩn đầu ra</strong>
														</div>
													<?php endif?>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
												</div>
											</div>
										</div>
									</div>
								<?php else: ?>
									<a class="btn btn-primary btn-xs" disabled="" data-toggle="modal" href='#modal-id<?=$vb->id?>'><i class="fa fa-graduation-cap" aria-hidden="true"></i></a>
										<?php endif?>

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
						url: '<?=base_url('nganhdaotao/delete')?>',
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

