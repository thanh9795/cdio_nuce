<div class="tab" style="background-color: #0f297e; color:#fff; margin-top: 10px;">
  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Xem theo học kỳ <?php echo $nganhdaotaos->ten_nganh ?></button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Xem theo khối lượng giảng dạy</button>
</div>

<div id="pageDetail" style="padding-top: 0px !important;">


  <div class="modal fade" id="modal-decuong">
    <div class="modal-dialog" style="width: 80%">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Danh sách tài liệu:<!--  {{monhoc}} --></h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-12">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>Kiểu</th>
                    <th>Đường dẫn</th>
                    <th>Ngày tạo</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(item,index) in decuongs">
                    <td>{{item.type}}</td>
                    <td><a :href="item.type2==2?base+item.link:item.link">{{item.link|shorter}}</a></td>
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
  <div id="London" class="tabcontent">
    </h1>
      <div class="row">
        <div class="col-md-1 nopad" style="padding-right: 0px!important;padding-left: 2px!important;">
          <div class="panelhk">
            <div class="hockyhead" style="padding: 5px 10px 5px 10px;">
              Tổng
              <p>({{total}} tín chỉ)</p>
            </div>
          </div>
          <div v-for="item in max" class="panel panel-default panelhk" style="padding-top: 5px;">
            <div class=""  style="line-height: 8; text-align: center;">
              {{item}}
            </div>
          </div>
        </div>
        <div class="col-md-1 nopad" style="padding-right: 0px!important;padding-left: 2px!important;" v-for="item in ctdt['so_hoc_ky']">
          <div class="panelhk">
            <div class="hockyhead" style="padding: 5px 10px 10px 10px;">
              Học kỳ {{item}}
              <p> STC: {{tinchi[item-1]}}</p>
            </div>
          </div>
          <div v-for="item in ctdt['hocki'+item]" class="panel panel-default panelhk" :style="{background:item.bg,color:item.color}" style="padding-top: 5px;">
            <div class="" style="padding: 10px;">
              <p style="text-decoration: underline; font-weight: 700;">{{item.ma_mon}} - {{item.so_tin_chi}}</p>
              {{item.ten_mon}}
            </div>
          </div>
        </div>
      </div>
  </div>
  <div id="Paris" class="tabcontent">

  <table class="table table-hover">
    <thead>
      <tr>
        <th>STT</th>
        <th>Mã hp</th>
        <th>Tên hp</th>
        <th>STC</th>
        <th>Số tiết LT</th>
        <th>Số tiết TH</th>
        <th>Mã hp tiên quyết</th>
        <th>Học kỳ</th>
        <th>Thao tác</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(item,index) in monhocs">
        <td>{{index+1}}</td>
        <td>{{item.ma_mon}}</td>
        <td>{{item.ten_mon}}</td>
        <td>{{item.so_tin_chi}}</td>
        <td>{{item.so_tiet_ly_thuyet}}</td>
        <td>{{item.so_tiet_thuc_hanh}}</td>
        <td>{{item.ma_hoc_phan_tien_quyet}}</td>
        <td>{{item.hoc_ky}}</td>
        <td><a href="#" @click.prevent="Xemdecuong(item)" >Xem đề cương</a></td>
      </tr>
    </tbody>
  </table>
</div>
</div>


<style>
div.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  height: 35px;
}

/* Style the buttons inside the tab */
div.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 5px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border-top: none;
}
</style>
<script>
  function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<script>
  var vm = new Vue({

    el: "#pageDetail",
    data () {
      return {
        decuongs:[],
        monhocs:[],
        base:'<?php echo base_url() ?>',
        title:"",
        dtid:'<?=$nganhdaotaos->id?>',
        tinchi:[],
        total:0,
        max:0,
        sohocky:9,
        ctdt:{},
      };
    },
    methods: {
      Xemdecuong(item){
        let data={
          id_monhoc:item.id,
          id_nganh:this.dtid
        };
        this.$http.get(this.base+'Highdecuong/index/',{params:data}).then(res => {
          console.log(res);
          this.decuongs=res.body;
          if (this.decuongs.length>0) {
            if (this.decuongs[0].type2==1) {
            //window.location.assign(this.decuongs[0].link);
              window.open(this.decuongs[0].link,'_blank');

            }else{
              window.open('https://docs.google.com/gview?url='+this.base+this.decuongs[0].link,'_blank');
            //window.location.assign();
            }
          }else{
            alert('Hiện tại môn này chưa có đề cương');
          }
        }).catch(err => {
          console.log(err);
        });
      },
      OpenDecuong(item){
        $("#modal-decuong").modal("show");
        /*this.monhoc=item.ten_mon;
        this.id_monhoc=item.id;
          this.getDecuong();*/
        let data={
        id_monhoc:item.id,
        id_nganh:this.dtid
      };
        this.$http.get(this.base+'Highdecuong/index/',{params:data}).then(res => {
          console.log(res);
          this.decuongs=res.body;
        }).catch(err => {
          console.log(err);
        });

      },
      gethocky() {
        this.$http.get(this.base+'nganhdaotao/apihocky',{params:{id:this.dtid}}).then(res => {
          this.ctdt=res.body;
        }).catch(err => {
          console.log(err);
        });
      },
    },
    watch: {
      ctdt: {
        handler(val){
          var self=this;
          var mau=["#27ae60","#e74c3c","#f1c40f","#9b59b6","#34495e","#f39c12"];
          var index=0;
          var monhocs=[];
          var total=0;
          self.total=0;
          self.max=0;
          self.tinchi=[];
          val.so_hoc_ky.forEach(function (item) {
            var totalki=0;
            self.max=val['hocki'+item].length>self.max?val['hocki'+item].length:self.max;
            val['hocki'+item].forEach(function (item2) {
              monhocs.push(item2);
              totalki+=parseInt(item2.so_tin_chi);
              monhocs.forEach(function (mh) {
                if (item2.ma_hoc_phan_tien_quyet==mh.ma_mon) {
                  if (mh.bg==null) {

                    item2.bg=mau[index];
                    item2.color="#fff";
                    mh.color="#fff";

                    mh.bg=mau[index++];
                  }else{
                    item2.bg=mh.bg;
                    item2.color=mh.color;
                  }
                }
              });
            });
            self.tinchi.push(totalki);
            self.total+=totalki;
          });
          self.monhocs=monhocs;
        },
        deep: true
      }

    },
    created(){
      this.gethocky();
    }

  })
</script>