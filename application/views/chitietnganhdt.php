<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Chương trình đào tạo kiểu 1</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Chương trình đào tạo kiểu 1</button>
</div>

<div id="London" class="tabcontent">
    <div id="pageDetail">
    <h1 id="pageDetailTitle">

      Chương trình đào tạo ngành {{title}}
    </h1>
    <div class="pageDetailContent">
      <div class="row">
        <div class="col-md-2 nopad">
          <div class="panel panel-default panelhk">
            <div class="panel-body hockyhead">
              Tổng
              <p>({{total}} tín chỉ)</p>
            </div>
          </div>
          <div v-for="item in max" class="panel panel-default panelhk">
            <div class="panel-body" >
              {{item}}
            </div>
          </div>
        </div>
        <div class="col-md-1 nopad" v-for="item in ctdt['so_hoc_ky']">
          <div class="panel panel-default panelhk">
            <div class="panel-body hockyhead">
              Học kỳ {{item}}
              <p> STC: {{tinchi[item-1]}}</p>
            </div>
          </div>
          <div v-for="item in ctdt['hocki'+item]" class="panel panel-default panelhk">
            <div class="panel-body" :style="{background:item.bg,color:item.color}">
              <p style="text-decoration: underline;">{{item.ma_mon}} - {{item.so_tin_chi}}</p>
              {{item.ten_mon}}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="Paris" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p>
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
        base:'<?php echo base_url() ?>',
        title:"",
        dtid:'<?php echo $this->uri->segment(3) ?>',
        tinchi:[],
        total:0,
        max:0,
        sohocky:9,
        ctdt:{},
      };
    },
    methods: {
      gethocky() {
        this.$http.get(this.base+'nganhdaotao/apihocky',{params:{id:this.dtid}}).then(res => {
          this.ctdt=res.body;
        }).catch(err => {
          console.log(err);
        });
      },
    },
    watch: {
      key: function (val) {
        this.getMonHoc(val);

      },
      monhocs:function (val) {
        this.saveinBack();
      },
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
          console.log(monhocs);
        },
        deep: true
      }

    },
    created(){
      this.gethocky();
    }

  })
</script>