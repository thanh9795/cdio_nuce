<div id="decuong">
	<div class="row">
		<div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0;">
			<form action="">
				<div id="imaginary_container">
					<div class="input-group stylish-input-group">
						<input type="text" class="form-control" name="key" value="<?= $this->input->get('key') ?>" placeholder="Search">
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
		<div class="col-md-12">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Mã môn</th>
						<th>Tên môn</th>
						<th>Số tín chỉ</th>
						<th>Số tiết lý thuyết</th>
						<th>Số tiết thực hành</th>
						<th>Mã môn học tiền quyết</th>
						<th>Tài liệu</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($monhocs as $vb): ?>

						<tr>
							<td scope="row"><?=$vb->ma_mon?></td>
							<td><?=$vb->ten_mon?></td>
							<td><?=$vb->so_tin_chi?></td>
							<td><?=$vb->so_tiet_ly_thuyet?></td>
							<td><?=$vb->so_tiet_thuc_hanh?></td>
							<td><?=$vb->ma_hoc_phan_tien_quyet?></td>
							<td> 
								<?php if ($vb->attachnumber): ?>
									<button @click="OpenDecuong(<?=$vb->id?>,'<?=$vb->ten_mon?>')" style="background: #27ae60;color:#fff" type="button" class="btn btn-default"> <?=$vb->attachnumber?> <i class="fa fa-book" aria-hidden="true"></i></button>
								<?php else: ?>
									Chưa có đề cương
								<?php endif ?>
							</td>

						</tr>
					<?php endforeach?>

				</tbody>
			</table>
			<?php echo $paginator ?>
		</div>
	</div>
	<div class="modal fade" id="modal-decuong">
		<div class="modal-dialog" style="width: 80%">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Tài liệu đề cương: {{monhoc}}</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Kiểu</th>
										<th>Đường dẫn</th>
										<th>Ngày upload</th>
									</tr>
								</thead>
								<tbody>
									<tr v-for="item in decuongs">
										<td>{{item.type}}</td>
										<td><a :href="this.base+item.link">{{item.link|shorter}}</a></td>
										<td>{{item.date_created}}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>

	var vm = new Vue({
		
		el: "#decuong",
		data () {
			return {
				base:'<?= base_url() ?>',
				id:0,
				decuongs:[],
				monhoc:""
			};
		},
		filters: {
		  shorter: function (value) {
		    if (!value) return ''
		    value = value.toString()
			if (value.length>50) {

		    	return value.substr(0,50)+"...";
			}
			return value;
		  }
		},
		methods: {
			OpenDecuong (id,monhoc) {
				this.id=id;
				this.monhoc=monhoc;
				$("#modal-decuong").modal("show");
				this.getDecuong(id);
			},
			getDecuong(id){
				this.$http.get(this.base+'decuong/index/'+id).then(res => {
					console.log(res);
					this.decuongs=res.body;
				}).catch(err => {
					console.log(err);
				});
			},

		}
		
	})
</script>
