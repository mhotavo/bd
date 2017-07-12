 
<!DOCTYPE html>
<?php  ?>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin | Lockscreen</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.4 -->
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <!-- Font Awesome Icons -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

  <!-- Theme style -->
  <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
      </head>
      <?php  ?>
      <body class="lockscreen">
        <!-- Automatic element centering -->
        <div class="lockscreen-wrapper">
          <div class="lockscreen-logo">
            <a href="index2.html"><b>Admin</b>PASS</a>
          </div>
          <!-- User name -->
          <div class="lockscreen-name">User</div>

          <!-- START LOCK SCREEN ITEM -->
          <div class="lockscreen-item">
            <!-- lockscreen image -->
            <div class="lockscreen-image">
              <img src="dist/img/user1-128x128.jpg" alt="User Image" />
            </div>
            <!-- /.lockscreen-image -->

            <!-- lockscreen credentials (contains the form) -->

            <form class="lockscreen-credentials" name="login" action="../Controllers/LoginController.php" method="post">
              <div class="input-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="password" />
                <div class="input-group-btn">

                  <button class="btn" type="submit"><i class="fa fa-arrow-right text-muted"></i></button>
                  <input type="hidden" value="login" id="login"   name="login">
                </div>
              </div>
            </form><!-- /.lockscreen credentials -->

          </div><!-- /.lockscreen-item -->
          <div class="help-block text-center">
            Enter your password
          </div>
          <div class="text-center">

          </div>
          <div class="lockscreen-footer text-center">
            Copyright &copy; <?php echo date("Y"); ?> <b><a href="" class="text-black"> </a></b><br/>
            All rights reserved
          </div>
        </div><!-- /.center -->

        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
      </body>
      </html>
      <?php 

      session_start();
      if (isset($_SESSION['app_id'] ) and !empty($_SESSION['app_id'] ) ) {
        header("Location: listar.php");
      } else {
        session_destroy();
      }
      ?>