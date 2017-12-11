<div id="pageDetail" style="padding-top: 20px;">
  <h1 id="pageDetailTitle">

    GIỚI THIỆU
  </h1>
  <div class="pageDetailContent">
    <?php echo $gts->txt_content ?>
    <div id="slide">
      <div id="carousel-id" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <?php foreach ($hinhanhs as $key=> $ha): ?>
           <li data-target="#carousel-id" data-slide-to="<?= $key ?>" class="<?= $key==0?'active':'' ?>"></li>
          <?php endforeach ?>
        </ol>
        <div class="carousel-inner">
          <?php foreach ($hinhanhs as $key=> $ha): ?>

          <div class="item <?= $key==0?'active':'' ?>">
            <img src="<?= $ha->link ?>">
            <div class="container">
              <div class="carousel-caption">
                <p><?= $ha->mota ?></p>
                <p><a class="btn btn-lg btn-primary" href="<?= $ha->linkto ?>" role="button">Xem chi tiết</a></p>
              </div>
            </div>
          </div>
          <?php endforeach ?>


        </div>
        <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>
    </div>
  </div>

</div>
