<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6">
				<a href="" class="btn btn-primary">mới</a>
			</div>
			<div class="col-md-6">
				<form action="">
					<div id="imaginary_container"> 
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control" name="search" placeholder="Search" >
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
				<h2>Chi tiết Tin tức</h2>
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

				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th style="width: 150px;">Tiêu đề</th>
							<th style="width: 150px;">Mô tả</th>
							<th style="width: 180px;">Chi tiết</th>
							<th>Ngày tạo</th>
							<th>Ngày sửa</th>
							<th>STT</th>
							<th>File 1</th>
							<th>File 2</th>
							<th>File 3</th>
						</tr>
					</thead>
					<tbody>
							
							<tr>
								<th scope="row"><?= $tin->id ?></th>
								<td><?= $tin->tieude ?></td>
								<td><?= $tin->mota ?></td>
								<td><?= $tin->chi_tiet ?></td>
								<td><?= $tin->date_created ?></td>
								<td><?= $tin->date_updated ?></td>
								<td><?= $tin->stt ?></td>
								<td><?= $tin->file1 ?></td>
								<td><?= $tin->file2 ?></td>
								<td><?= $tin->file3 ?></td>
							</tr>

					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>

