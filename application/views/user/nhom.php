<div class="page-title">
  <div class="title_left">
    <h3>Quản lý nhóm người dùng</h3>
  </div>
</div>
<script>
	$(document).ready(function() {
		$("#datatable").DataTable();
	});
</script>
<?php 
$this->load->view('partial/alert');
?>

<div class="row">
	<div class="col-md-12">
		<a class="btn btn-primary" data-toggle="modal" href='#modal-id'>Thêm mới nhóm người dùng</a>
		<div class="modal fade" id="modal-id">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Thêm mới nhóm người dùng</h4>
					</div>
						<form action="<?= base_url('nhom/addnhom'); ?>" method="POST" role="form">
					<div class="modal-body">
								<div class="form-group">
									<label for="">Tên nhóm người dùng</label>
									<input required="" name="tennhom" type="text" class="form-control" >
								</div>

							<?php 
						$str="";
						showCategories($chucnangs,0,$str);
						function showCategories($categories, $parent_id, $char = ''){
							foreach ($categories as $key => $item) {
								if ($item->id_parent == $parent_id){
									
										?>
									<div class="col-md-12">
									<?=$char ?> <input type="checkbox" id="cn<?= $item->id ?>" name="cn[]" value="<?= $item->id ?>"  class="form-control flat ">
									<label class="text-left control-label" for="cn<?= $item->id ?>"><?=$item->tenchucnang ?>
									</label>
												</div>

										<?php
									//echo $char.$item->tenchucnang."<br>";
									unset($categories[$key]);
									showCategories($categories, $item->id, $char.'|----------');
								}
							}
						}
					 ?>
						
							
					<div style="clear: both"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
						<button type="submit" class="btn btn-primary">Lưu lại</button>
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

				<table id="datatable" class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>ID</th>
							<th>Tên nhóm</th>
							<th>Tổng số người dùng</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<?php $i=0; ?>
						<?php foreach ($nhoms as $nhom): ?>

							<tr>
								<th scope="row"><?= ++$i ?></th>
								<td><?= $nhom->id ?></td>
								<td><?= $nhom->tennhom ?></td>
								<td><?= $nhom->total ?></td>
								<td>
									<a href="<?= base_url('nhom/detail/'.$nhom->id) ?>">
										<button type="button" class=" btn-xs btn btn-info"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></button>
									</a>
								</td>
							</tr>
						<?php endforeach ?>

					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>