<div id="ctl10_ucLoadControl_ctl00_pnDS">
    <div class="form-search pull-right" style="max-width: 280px;margin-right: 29px;padding: 10px 0;">
        <form action="">
            <div id="imaginary_container">
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control" name="key" value="<?php echo $this->input->get('key') ?>" placeholder="Tìm kiếm theo tên tài liệu" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </span>
                </div>
            </div>
        </form>
    </div>
    <?php foreach ($tailieus as $tailieu): ?>
        <div id="s5_component_wrap">
            <div id="edocman-category-page-default" class="edocman-container">
                <div class="clearfix"></div>

                <div id="edocman-documents" class="row-fluid clearfix list">
                    <div class="edocman-document row-fluid">
                        <div class="edocman-box-heading clearfix">
                            <h3 class="edocman-document-title pull-left"><?php echo $tailieu->ten_tai_lieu ?></h3>
                        </div>
                        <div class="edocman-description clearfix">
                            <div class="edocman-description-details">
                                <div style="float: left; margin-right: 10px;">
                                    <?php
$ext = explode('.', $tailieu->link_tai_lieu);
$ext = end($ext);
?>
                                    <img src="<?=base_url(get_icon($ext))?>" alt="">
                                </div>
                                <p></p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="edocman-taskbar clearfix">
                                <ul>
                                   <li>
                                    <?php if ($tailieu->loai_link == 1): ?>

                                    <?php else: ?>
                                        <a class="btn btnDownload" download="" data-value="<?=$tailieu->id?>"
                                            href="<?=base_url($tailieu->link_tai_lieu)?>"><i class="edocman-icon-download"></i>Tải xuống</a>
                                        <?php endif?>
                                    </li>
                                    <li>
                                        <?php if ($tailieu->loai_link == 2): ?>

                                            <a data-value="<?=$tailieu->id?>" class="btn btnView2" href="<?=in_array($ext, explode("|", READABLE)) ? "http://docs.google.com/gview?url=" . base_url($tailieu->link_tai_lieu) : "javascript:void(0)"?>"><i class="edocman-icon-eye-open"></i>Xem</a>
                                        <?php else: ?>
                                           <a data-value="<?=$tailieu->id?>" class="btn btnView2" href="<?=$tailieu->link_tai_lieu?>"><i class="edocman-icon-eye-open"></i>Xem</a>
                                       <?php endif?>
                                   </li>
                                   <li><a href="#" class="btn btn-primary btnDetail" data-value="<?=$tailieu->id?>" data-toggle="modal" data-target="#modelDetail<?=$tailieu->id?>">Chi tiết</a></li>
                               </ul>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <div id="modelDetail<?=$tailieu->id?>" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">Xem chi tiết</h4>
                </div>
                <div class="modal-body">
                    <div id="edocman-document-details" class="edocman-description">
                        <div class="edocman-description-details clearfix">
                            <span id="docName"></span>
                            <span id="docDes"></span>
                        </div>
                        <div id="edocman-document-info" class="clearfix">
                            <table class="table table-bordered table-striped">
                                <tbody>
                                    <tr>
                                        <td class="edocman-document-property-label"><strong>Tên file:</strong></td>
                                        <td class="edocman-document-property-value" id="docTitle"><?php echo $tailieu->ten_tai_lieu ?></td>
                                    </tr>
                                    <?php if ($tailieu->loai_link == 2): ?>


                                        <tr>
                                            <td class="edocman-document-property-label"><strong>Kích thước:</strong></td>
                                            <td class="edocman-document-property-value" id="docSize"><?=number_format(filesize($tailieu->link_tai_lieu) / 1024, 1) . "KB"?></td>
                                        </tr>
                                        <tr>
                                            <td class="edocman-document-property-label"><strong>Loại file:</strong></td>
                                            <td class="edocman-document-property-value" id="docTOP"></td>
                                        </tr>
                                        <tr>
                                            <td class="edocman-document-property-label"><strong>Lượt tải:</strong></td>
                                            <td class="edocman-document-property-value" id="docDL"><?php echo $tailieu->luot_tai ?></td>
                                        </tr>
                                    <?php endif?>
                                    <tr>
                                        <td class="edocman-document-property-label"><strong>Lượt xem:</strong></td>
                                        <td class="edocman-document-property-value" id="docHit"><?php echo $tailieu->luot_xem ?></td>
                                    </tr>
                                    <tr>
                                        <td class="edocman-document-property-label"><strong>Ngày tạo:</strong></td>
                                        <td class="edocman-document-property-value" id="docCreateDate"><?php echo $tailieu->date_created ?></td>
                                    </tr>
                                    <tr>
                                        <td class="edocman-document-property-label"><strong>Ngày cập nhật:</strong></td>
                                        <td class="edocman-document-property-value" id="docUpdate"><?php echo $tailieu->date_updated ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="edocman-taskbar clearfix">
                            <ul>
                               <li>
                                <?php if ($tailieu->loai_link == 1): ?>

                                <?php else: ?>
                                    <a class="btn btnDownload" download="" data-value="<?=$tailieu->id?>"
                                        href="<?=base_url($tailieu->link_tai_lieu)?>"><i class="edocman-icon-download"></i>Tải xuống</a>
                                    <?php endif?>
                                </li>
                                <li>
                                    <?php if ($tailieu->loai_link == 2): ?>

                                        <a data-value="<?=$tailieu->id?>" class="btn btnView2" href="<?=in_array($ext, explode("|", READABLE)) ? "http://docs.google.com/gview?url=" . base_url($tailieu->link_tai_lieu) : "javascript:void(0)"?>"><i class="edocman-icon-eye-open"></i>Xem</a>
                                    <?php else: ?>
                                       <a data-value="<?=$tailieu->id?>" class="btn btnView2" href="<?=$tailieu->link_tai_lieu?>"><i class="edocman-icon-eye-open"></i>Xem</a>
                                   <?php endif?>
                               </li>
                           </ul>
                       </div>

                   </div>
               </div>
               <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>
<?php endforeach?>
<?php echo $paginator ?>
<script>
   $(".btnDownload").on("click", function (e) {
   //    e.preventDefault();
   var curId = parseInt($(this).attr("data-value"));
   $.ajax({
   url: "<?=base_url('Home')?>/incDownload",
   type: 'POST',
   data: {docId:curId},

})
.done(function() {
console.log("success");
})
.fail(function() {
console.log("error");
})
.always(function() {
console.log("complete");
});

});

$(".btnView2").on("click", function (e) {
//  e.preventDefault();
var curId = parseInt($(this).attr("data-value"));
$.ajax({
url: "<?=base_url('Home')?>/incView",
type: 'POST',
data: {docId:curId},

})
.done(function() {
console.log("success");
})
.fail(function() {
console.log("error");
})
.always(function() {
console.log("complete");
});

});
/*   $(".btnDetail").on("click", function () {
var curId = parseInt($(this).attr("data-value"));
$.ajax({
type: "POST",
url: "../ControlPanel/default.aspx/viewDocDetail",
data: "{docId:'" + curId + "'}",
contentType: "application/json; charset=utf-8",
datatype: "json",
async: "true",
success: function (data) {
var typeOfFile = data.d.FileAttach.substr(data.d.FileAttach.lastIndexOf("."));
$("#docName").html(data.d.Title);
$("#docDes").html(data.d.Description);
$("#docTitle").html(data.d.Title);
$("#docSize").html(data.d.SizeOfFile);
$("#docTOP").html("application/" + typeOfFile);
$("#docHit").html(data.d.Hit);
$("#docDL").html(data.d.Download);
$("#docCreateDate").html(parseJsonDate(data.d.CreatedDate));
$("#docUpdate").html(parseJsonDate(data.d.LastUpdateDate));
$("#docBtnDL")[0].href = data.d.FileAttach;
$("#docBtnDL")[0].setAttribute("data-value", data.d.Id);
var strLinkView = window.location.origin + "/" + data.d.FileAttach;
$("#docBtnView")[0].href = "http://docs.google.com/gview?url=" + strLinkView + "";
$("#docBtnView")[0].setAttribute("data-value", data.d.Id);
},
error: function (data) { debugger; }
});
});

function parseJsonDate(jsonDateString) {
var date = new Date(parseInt(jsonDateString.replace('/Date(', '')));
return date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear();
}*/
</script>
</div>