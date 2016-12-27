<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Đăng Nhập .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <script type="js/jquery-3.1.1.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
</head>
<body>
	<table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tbody><tr>
		<td colspan="2"><div id="pnTop">
			<div id="pnTopDisplay" style="width:1000px;float:left;">
				<div id="ctl05_portlet_1cfe540a-31bb-41fd-a3b8-367e8dd6581a" style="width:775px;float:left;padding:15px 0px 0px 0px;">
					<div class="logo_ute"><a href="#"><img alt="" src="images/skpt_banner_2.jpg"></a><br>
					</div>

				</div><div>
				<div class="sup_menu">
				<ul>
    
    			<li><a href="DangKyTaiKhoan.jsp">Đăng Ký Tài Khoản</a></li>
				</ul>
					</div>
				</div><div id="ctl05_portlet_9b8ba9cf-dd1c-4b80-91fe-8787110cd93b" style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>
					<marquee direction="right"><span style="text-align: left; font-size: 20px; font-family: arial; color: #ff0000;"><a href="#">ĐĂNG KÝ ĐỀ TÀI NGHIÊN CỨU KHOA HỌC</a>
	</span></marquee>
	
					</div></div>
				</div>
			</div></td>
		</tr>
	</tbody></table>
	<div class="container">
		<div class = "col-md-8 containt">
		<div class="panel panel-default">
		<div class="panel-heading">
		<h3 class = "panel-title"><h2>Đăng nhập<h2></h3>
				
		</div>
		
		<form class="form-horizontal" role="qldtnckh" action="Login.jsp" method="post">
		  <div class="form-group" style="margin-top: 30px;">
		    <label class="col-sm-4 control-label">Tên đăng nhập</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" name="txtid" placeholder="Tên đăng nhập">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-4 control-label">Mật khẩu</label>
		    <div class="col-sm-7">
		      <input type="password" class="form-control" name="txtpass" placeholder="Mật khẩu">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-3 col-sm-6">
		    </div>
		    <div class="col-sm-0">
		      <button type="submit" class="btn btn-primary">Đăng nhập</button>
		    </div>
		  </div>		  
		</form>
		</div>
		</div>	
		</div>
</body>

</html>