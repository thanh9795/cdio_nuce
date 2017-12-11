<?php 
$data['title_page']="Chi tiết nhóm người dùng: ".$nhom->tennhom;
$this->load->view('partial/title', $data);
?>


<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<?php 
		$this->load->view('partial/alert');
		?>
		<div class="x_panel">
			<div class="x_title">
				<h2><?=$nhom->tennhom ?> </h2>
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
				<form id="demo-form2" action="<?= base_url('nhom/edit_submit') ?>" method="POST" class="form-horizontal form-label-left">
					<input type="hidden" name="id" value="<?= $nhom->id ?>">
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Tên nhóm <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" id="tennhom" name="tennhom" required="required" value="<?= $nhom->tennhom ?>" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Phân quyền <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
					<?php 
					$str="";
						showCategories($chucnangs,0,$str,$roles);
						function showCategories($categories, $parent_id, $char = '',$r){
							foreach ($categories as $key => $item) {
								if ($item->id_parent == $parent_id){
									
										?>
									<div class="col-md-12">
									<?=$char ?> <input type="checkbox" id="cn<?= $item->id ?>" <?= in_array($item->id, $r)?"checked":"" ?> name="cn[]" value="<?= $item->id ?>"  class="form-control flat ">
									<label class="text-left control-label" for="cn<?= $item->id ?>"><?=$item->tenchucnang ?>
									</label>
												</div>

										<?php
									//echo $char.$item->tenchucnang."<br>";
									unset($categories[$key]);
									showCategories($categories, $item->id, $char.'|----------',$r);
								}
							}
						}
					 ?>
						</div>
					</div>
					<!-- <?php foreach ($chucnangs as $cn): ?>
						
						<div class="form-group">
							<div class="col-md-12">
								<input type="checkbox" id="cn<?= $cn->id ?>" <?= in_array($cn->id, $roles)?"checked":"" ?> name="cn[]" value="<?= $cn->id ?>"  class="form-control flat ">
								<label class="text-left control-label" for="cn<?= $cn->id ?>"><?=$cn->tenchucnang ?>
								</label>
							</div>
						</div>
					<?php endforeach ?> -->
					
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