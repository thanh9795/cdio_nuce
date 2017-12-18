<?php
function showCategories2($categories, $parent_id = 0, $char = '')
{
	foreach ($categories as $key => $item)
	{
                                // Nếu là chuyên mục con thì hiển thị
		if ($item->parent_id == $parent_id)
		{

			echo '<option value="'.$item->id.'">';
			echo $char . $item->title;
			echo '</option>';

                                    // Xóa chuyên mục đã lặp
			unset($categories[$key]);

                                    // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
			showCategories2($categories, $item->id, $char.'|---');
		}
	}
}
$menu2=$menu;
$menu3=$menu2;
$menu4=$menu2;

?>
<script>
	$(document).ready(function() {
		$(".itemdelete").click(function(event) {
			event.preventDefault();
			del=confirm("Bạn có chắc chắc xóa menu "+ $(this).data('title'));
			if (del) {
				$.ajax({
					url: '<?= base_url("Menu/deleteMenuElement/") ?>',
					type: 'POST',
					data: {id: $(this).data('id')},
				})
				.done(function() {
					window.location.reload();
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
		
		$(".itemedit").click(function(event) {
			event.preventDefault();
			
			$("#modal-edit").modal("show");
			$("#title").val($(this).data("title"));
			$("#idedit").val($(this).data("id"));
			
			$("#editlink").val($(this).data("link"));
			$("#editparent_id").val($(this).data("parent_id"));
		});
		var menu=$('#nestable3').nestable();
		menu.on('change', function(event) {
			event.preventDefault();
			console.log($('.dd').nestable('serialize'));
			$.ajax({
				url: '<?= base_url("Menu/savePosition") ?>',
				type: 'POST',
				dataType: 'text',
				data: {data:$('.dd').nestable('serialize')},
			})
			.done(function(rs) {
				console.log("success");
				console.log(rs);
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			
		});
	});
</script>
<div class="row">
	<div class="col-md-12">
		<h2>Quản lý menu</h2>
		<p>Kéo thả để sắp xếp</p>
	</div>
</div>

<div class="modal fade" id="modal-edit">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Chỉnh sửa menu</h4>
			</div>
			<form method="POST" action="<?=base_url()?>Menu/updateMenuElement" class="form-horizontal form-label-left input_mask">
				<div class="modal-body">



					<input id="idedit" type="hidden" name="id">
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên menu</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input id="title" name="title" type="text" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Đường dẫn</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input id="editlink" name="link" type="text" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Danh mục</label>
						<div class="col-md-9 col-sm-9 col-xs-12">

							<select id="editparent_id" name="parent_id" class="form-control">
								<option value="0">Menu</option>
								<?php showCategories2($menu3); ?>
							</select>
						</div>
					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</form>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-md-6 col-sm-12">
		<div class="dd" id="nestable3">
			<?php
			function showCategories($categories, $parent_id = 0, $char = '')
			{
    // BƯỚC 2.1: LẤY DANH SÁCH CATE CON
				$cate_child = array();
				foreach ($categories as $key => $item)
				{
        // Nếu là chuyên mục con thì hiển thị
					if ($item->parent_id == $parent_id)
					{
						$cate_child[] = $item;
						unset($categories[$key]);
					}
				}

    // BƯỚC 2.2: HIỂN THỊ DANH SÁCH CHUYÊN MỤC CON NẾU CÓ
				if ($cate_child)
				{
					echo "<ol class=\"dd-list\">";
					foreach ($cate_child as $key => $item)
					{
            // Hiển thị tiêu đề chuyên mục
						echo "<li class=\"dd-item dd3-item\" data-id=\"{$item->id}\">"."<div class=\"dd-handle dd3-handle\">Drag</div><div class=\"dd3-content\">".mb_substr($item->title,0,25)."

						<a class=\"itemdelete btn btn-danger btn-xs\" style=\"float:right\" data-title=\"{$item->title}\" data-id=\"{$item->id}\" href=\"\"> Delete</a>

						<a class=\"itemedit btn btn-info btn-xs\" style=\"float:right\"
						data-title=\"{$item->title}\"
						data-id=\"{$item->id}\"
						data-title=\"{$item->title}\"
						data-id=\"{$item->id}\"
						data-position=\"{$item->position}\"
						data-parent_id=\"{$item->parent_id}\" 
						data-link=\"{$item->link}\"  href=\"\"> Edit</a>
						</div>";

            // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
						showCategories($categories, $item->id, $char.'|---');
						echo '</li>';
					}
					echo '</ol>';
				}
			}
			unset($item,$key,$char);
			showCategories($menu);

			?>
		</div>

	</div>
	<div class="col-md-6 col-sm-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Thêm mới phần tử<small>menu</small></h2>
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
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
								Link</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">
								<form method="POST" action="<?=base_url('menu/addItem')?>" class="form-horizontal form-label-left input_mask">



									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên menu</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<input name="title" type="text" class="form-control" >
										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Đường dẫn</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<input name="link" type="text" class="form-control" >
										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Danh mục cha</label>
										<div class="col-md-9 col-sm-9 col-xs-12">

											<select name="parent_id" class="form-control">
												<option value="0">Menu</option>
												<?php showCategories2($menu2,0,'|---'); ?>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Vị trí</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<input name="position" type="number" class="form-control" >
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

											<button class="btn btn-primary" type="reset">Reset</button>
											<button type="submit" class="btn btn-success">Lưu</button>
										</div>
									</div>

								</form>

							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
									Nhóm
								</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="panel-body">
								<form method="POST" action="<?=base_url('Menu/addItemNhom')?>" class="form-horizontal form-label-left input_mask">



									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên menu</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<input name="title" type="text" class="form-control" >
										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Chọn nhóm</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<select name="link" id="input" class="form-control">
												<option value="">-- Select One --</option>
												<?php foreach ($nhoms as $key => $value): ?>
													<option value="<?php echo $value->value ?>"><?php echo $value->content ?></option>
												<?php endforeach ?>
											</select>
										</div>
									</div>


									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Danh mục cha</label>
										<div class="col-md-9 col-sm-9 col-xs-12">

											<select name="parent_id" class="form-control">
												<option value="0">Menu</option>
												<?php showCategories2($menu4,0,'|---'); ?>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12">Vị trí</label>
										<div class="col-md-9 col-sm-9 col-xs-12">
											<input name="position" type="number" class="form-control" >
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

											<button class="btn btn-primary" type="reset">Reset</button>
											<button type="submit" class="btn btn-success">Lưu</button>
										</div>
									</div>

								</form>

							</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
								Tin tức</a>
							</h4>
						</div>
						<div id="collapse3" class="panel-collapse collapse">
							<div class="panel-body"></div>
						</div>
					</div>
				</div>
				<br>

				



			</div>
		</div>
	</div>
</div>