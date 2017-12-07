<div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0; padding-top: 35px;">
    <form action="">
        <div id="imaginary_container">
            <div class="input-group stylish-input-group">
                <input type="text" class="form-control" name="key" value="<?php echo $this->input->get('key') ?>" placeholder="Search" >
                <span class="input-group-addon">
                    <button type="submit">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                </span>
            </div>
        </div>
    </form>
</div>
          <div id="pageDetail">
<!--             <h1 id="pageDetailTitle">

  Khung CTĐT các ngành
</h1> -->
          	<div class="pageDetailContent">

          		<table class="table table-hover">
          			<thead>
          				<tr>
          					<th>stt</th>
          					<th>Mã ngành</th>
          					<th>Tên ngành</th>
          					<th>Thao tác</th>
          				</tr>
          			</thead>
          			<tbody>
          				<?php foreach ($nganhdaotaos as $nganhdaotao): ?>
          					<tr>
          						<td><?php echo $nganhdaotao->id ?></td>
          						<td><?php echo $nganhdaotao->ma_nganh ?></td>
          						<td><?php echo $nganhdaotao->ten_nganh ?></td>
          						<td><a href="<?php echo base_url('home/chitietCtDaotao/' . $nganhdaotao->id) ?>">Xem chi tiết</a></td>
          					</tr>
          				<?php endforeach?>
          			</tbody>
          		</table>
          		<?php echo $paginator ?>
          	</div>
          </div>