
<?php
$data['title_page'] = "Quản lý người dùng";
$this->load->view('partial/title', $data);
$this->load->view('partial/alert');
?>

<div class="row">
	<div class="col-md-12">
		<?php if (validation_errors() != null): ?>
			<script>
				$(document).ready(function() {
					$('#addnewuser').modal('show');
				});
			</script>

		<?php endif?>
		<a class="btn btn-primary" data-toggle="modal" href='#addnewuser'><i class="fa fa-user-plus"></i> Thêm mới người dùng</a>
		<div class="modal fade" id="addnewuser">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Thêm mới người dùng</h4>
					</div>
					<form action="<?=base_url('user')?>" method="POST" role="form">
						<div class="modal-body">
							<?php if (validation_errors() != null): ?>
								<div class="alert alert-danger">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<strong>Lỗi!</strong>
									<?php echo validation_errors(); ?>

								</div>
							<?php endif?>
							<div class="form-group">
								<label for="">Tên đăng nhập</label>
								<input name="username" type="text" class="form-control" id="">
							</div>
							<div class="form-group">
								<label for="">Email</label>
								<input name="email" type="text" class="form-control" id="">
							</div>
							<div class="form-group">
								<label for="">Mật khẩu</label>
								<input name="password" type="text" class="form-control" id="">
							</div>
							<div class="form-group">
								<label for="">Họ tên</label>
								<input name="hoten" type="text" class="form-control" id="">
							</div>
							<div class="form-group">
								<label for="">Nhóm người dùng</label>
								<select name="id_nhom" id="inputNhom" class="form-control" required="required">
									<option value="">Chọn nhóm người dùng</option>
									<?php foreach ($nhoms as $nhom): ?>
										<option value="<?=$nhom->id?>"><?=$nhom->tennhom?></option>
									<?php endforeach?>
								</select>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
							<button type="submit" class="btn btn-primary">Thêm mới</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Quản lý nhóm người dùng</h2>
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
							<th>ID</th>
							<th>Username</th>
							<th>Họ tên</th>
							<th>Nhóm người dùng</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($users as $user): ?>

							<tr>
								<td><?=$user->userid?></td>
								<td><?=$user->username?></td>
								<td><?=$user->hoten?></td>
								<td><?=$user->tennhom?></td>
								<td>
									<a href="<?=base_url('user/detail/' . $user->userid)?>">
										<button type="button" class=" btn-xs btn btn-info"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></button>
									</a>
									<a class="btn btn-danger btn-xs" data-toggle="modal" href='#del<?=$user->userid?>'><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
									<div class="modal fade" id="del<?=$user->userid?>">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h4 class="modal-title">Thông báo</h4>
												</div>
												<div class="modal-body">
													Bạn có chắc chắn muốn xóa người dùng này: <strong><?=$user->username?></strong>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
													<a href="<?=base_url('user/delete/' . $user->userid)?>" class="btn btn-danger">Xác nhận xóa</a>
												</div>
											</div>
										</div>
									</div>

								</td>
							</tr>
						<?php endforeach?>

					</tbody>
				</table>
			<?=$phantrang?>
			</div>
		</div>
	</div>
</div>