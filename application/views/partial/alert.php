<?php if ($this->session->flashdata('code')=="success"): ?>
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-<?= $this->session->flashdata('code') ?>">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong><?= $this->session->flashdata('message') ?>!</strong>
		</div>
	</div>
</div>
<?php endif ?>
<?php if ($this->session->flashdata('code')=="error"): ?>
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-<?= $this->session->flashdata('code') ?>">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong><?= $this->session->flashdata('message') ?>!</strong>
		</div>
	</div>
</div>
<?php endif ?>

<?php if ($this->session->flashdata('code')=="info"): ?>
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-<?= $this->session->flashdata('code') ?>">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong><?= $this->session->flashdata('message') ?>!</strong>
		</div>
	</div>
</div>
<?php endif ?>
