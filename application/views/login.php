<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CDIO | Đăng nhập </title>

    <!-- Bootstrap -->
    <link href="<?=base_url('assets')?>/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?=base_url('assets')?>/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?=base_url('assets')?>/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?=base_url('assets')?>/vendors/animate.css/animate.min.css" rel="stylesheet">
    <link href="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?=base_url('assets')?>/build/css/custom.min.css" rel="stylesheet">
    <!-- Latest compiled and minified CSS & JS -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.js"></script>
    <script src="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="<?=base_url('assets')?>/vendors/pnotify/dist/pnotify.nonblock.js"></script>
  </head>

  <body class="login">
  <script type="text/javascript">
    $(document).ready(function() {
      <?php if ($this->session->flashdata('logout') == 'true'): ?>
        new PNotify({
              title: 'Thông báo',
              text: 'Đăng xuất thành công',
              type: 'info',
              hide: false,
              styling: 'bootstrap3'
          });
      <?php endif?>
      <?php if ($this->session->flashdata('tokenend') == 'true'): ?>
        new PNotify({
              title: 'Thông báo',
              text: 'Token bạn sử dụng để đăng nhập trước đó đã hết hạn',
              type: 'info',
              hide: false,
              styling: 'bootstrap3'
          });
      <?php endif?>
      $("#loginform").submit(function() {
         var form_data=$("#loginform").serialize();
        $.ajax({
          url: '<?=base_url('page/login_submit')?>',
          type: 'POST',
          dataType: 'text',
          data: form_data,
        })
        .done(function(result) {
          PNotify.removeAll();
          console.log("success");
          var rs=JSON.parse(result);
          new PNotify({
              title: 'Thông báo',
              text: rs.message,
              type: rs.code,
              hide: false,
              styling: 'bootstrap3'
          });
          if (rs.code=="success") {
              new PNotify({
                title: 'Thông báo',
                text: 'Đang chuyển hướng',
                type: 'info',
                hide: false,
                styling: 'bootstrap3'
            });
            <?php if ($this->input->get('next') != NULL): ?>
            setTimeout(function(){ window.location.assign('<?=base_url($this->input->get('next'))?>') }, 1000);
            <?php else: ?>
            setTimeout(function(){ window.location.assign('<?=base_url('admin')?>') }, 1000);
            <?php endif?>
          }

        })
        .fail(function() {
          console.log("error");
        })
        .always(function() {
          console.log("complete");
        });
        return false;
      });
        $("#token_form").submit(function() {
         var form_data=$("#token_form").serialize();
        $.ajax({
          url: '<?=base_url('accesstoken/login_token')?>',
          type: 'POST',
          dataType: 'text',
          data: form_data,
        })
        .done(function(result) {
          PNotify.removeAll();
          console.log("success");
          var rs=JSON.parse(result);
          new PNotify({
              title: 'Thông báo',
              text: rs.message,
              type: rs.code,
              hide: false,
              styling: 'bootstrap3'
          });
          if (rs.code=="success") {
              new PNotify({
                title: 'Thông báo',
                text: 'Đang chuyển hướng',
                type: 'info',
                hide: false,
                styling: 'bootstrap3'
            });
               <?php if ($this->input->get('next') != NULL): ?>
            setTimeout(function(){ window.location.assign('<?=base_url($this->input->get('next'))?>') }, 1000);
            <?php else: ?>
            setTimeout(function(){ window.location.assign('<?=base_url('admin')?>') }, 1000);
            <?php endif?>
          }

        })
        .fail(function() {
          console.log("error");
        })
        .always(function() {
          console.log("complete");
        });
        return false;
      });

    });
  </script>
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
      <h1><img src="<?=base_url('assets/build/images/header.jpg')?>" style="width:300px;margin: auto;margin-top: 20px" class="img-responsive" alt="Image"></h1>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">

            <form id="loginform" method="POST"  action="<?=base_url('page/login_submit')?>">
              <h1>Đăng nhập hệ thống</h1>
              <div>
                <input type="text" id="username" name="username" class="form-control" placeholder="Tài khoản" required="" />
              </div>
              <div>
                <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu" required="" />
              </div>
              <div>
                <button type="submit" class="btn btn-default submit" >Log in</button>
              </div>
               <div class="separator">
                <p class="change_link">Đăng nhập bằng token?
                  <a href="#signup" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
              </div>
              <div class="clearfix"></div>


                <br />

                <div>
                  <p>©2017 ITPLUS CRM!</p>
                </div>
            </form>
          </section>
        </div>
        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form id="token_form">
              <h1>Access token</h1>
              <div>
                <input type="text" name="token" class="form-control" placeholder="Access token" required="">
              </div>
              <div>
                <button type="submit" class="btn btn-default submit" >Log in</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Đăng nhập tài khoản và mật khẩu ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br>

                <div>
                   <p>©2017 ITPLUS CRM!</p>
                </div>
              </div>
            </form>
          </section>
        </div>


      </div>
    </div>
  </body>
</html>
