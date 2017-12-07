<div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0;">
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
<div class="newList">
   <table id="listLaw">
      <tbody>
         <tr>
            <th align="center" valign="top" width="30">STT</th>
            <th align="center" valign="top" width="180">Số ký hiệu</th>
            <th align="center" valign="top" width="*">Trích yếu</th>
            <th align="center" valign="top" width="120">Ngày ban hành</th>
         </tr>
         <?php foreach ($vanbans as $vb): ?>

            <tr>
               <td align="center"><?php echo $vb->id ?></td>
               <td><a class="itemTitle" href="<?=base_url('home/detailVanban/' . $vb->id)?>" title=" KH-CDIO"><?php echo $vb->so_ky_hieu_vb ?></a></td>
               <td><a class="itemTitleAb" href="<?=base_url('home/detailVanban/' . $vb->id)?>" title=" KH-CDIO"><?php echo $vb->trich_yeu ?></a></td>
               <td align="center"><?php echo date('d-m-Y', strtotime($vb->date_created)) ?></td>
            </tr>

         <?php endforeach?>
      </tbody>
   </table>
   <?php echo $paginator ?>
</div>