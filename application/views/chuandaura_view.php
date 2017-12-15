<div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0; padding-top: 35px;">
    <form action="">
        <div id="imaginary_container">
            <div class="input-group stylish-input-group">
                <input type="text" class="form-control" name="key" value="<?php echo $this->input->get('key') ?>" placeholder="Nhập mã ngành hoặc tên ngành" >
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
          					<th>Mã ngành</th>
          					<th>Tên ngành</th>
          					<th>Thao tác</th>
          				</tr>
          			</thead>
          			<tbody>
          				<?php foreach ($chuandauras as $cdr): ?>
          					<tr>
          						<td><?php echo $cdr->ma_nganh ?></td>
          						<td><?php echo $cdr->ten_nganh ?></td>
                      <td>
                      <?php if ($cdr->chuandaura != NULL): ?>
                        <a class="btn btn-primary" href="<?php echo base_url('home/chitietchuandaura/' . $cdr->id) ?>">Xem chuẩn đầu ra</a>
                                                <?php else: ?>
                              <a class="btn btn-danger" disabled="" href="<?php echo base_url('home/chitietchuandaura/' . $cdr->id) ?>">Xem chuẩn đầu ra</a>
                          <?php endif?>
                        </td>

          					</tr>
          				<?php endforeach?>
          			</tbody>
          		</table>
          		<?php echo $paginator ?>
          	</div>
          </div>