<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Home .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <script type="js/jquery-1.10.2.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
  
</head>
<body>
    <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tbody><tr>
		<td colspan="2"><div id="pnTop">
			<div id="pnTopDisplay" style="width:1000px;float:left;
">
				<div id="ctl05_portlet_1cfe540a-31bb-41fd-a3b8-367e8dd6581a" style="width:775px;float:left;padding:15px 0px 0px 0px;">
					<div class="logo_ute"><a href="#"><img alt="" src="images/skpt_banner_2.jpg"></a><br>
					</div>

				</div><div>
					<div class="sup_menu">
				<ul>
    
    			<li><a href="DangNhap.jsp">Đăng Xuất</a></li>
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
       <div id="wrapper">
        <div class="container">
            <div class="row">
                <div id="left-content">
                    <div class="col-md-3">
                        <!-- Menu desktop -->
                        <div id="desktop-menu">
    <div class="panel panel-default">
        <div class="panel-heading">
        
            <h4 id="mobile_home">Danh Mục</h4>   
        </div>
       	<a href="HomeDuyetDT.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
       	<a href="QuanLy.jsp" class="list-group-item active"><span class="pull-right"></span>Thông tin cá nhân</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài của tôi</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
    </div>
                    </div>
                </div>
                <div id="w">
<div class="body">
<center><h1>THÔNG TIN CÁ NHÂN</h1></center>
<form name="xuly" action="" method="post">
<table border="0" cellpadding="0" cellspacing="0">
<tr class="table">
    <td class="left"><p>Tài khoản </p></td>
    <td class="right"><p><input type="text" name="taikhoan"></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Mật khẩu</p></td>
    <td class="right"><p><input type="password" name="matkhau"></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Nhập lại mật khẩu</p></td>
    <td class="right"><p><input type="password" name="lapmatkhau"></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Email</p></td>
    <td class="right"><p><input type="text" name="email"></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Họ tên</p></td>
    <td class="right"><p><input type="text" name="hoten"></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Giới tính</p></td>
    <td class="right"><p><input type="radio" checked name="gioitinh"> Nam <input type="radio" name="gioitinh"> Nữ</p></td>
</tr>
<tr class="table">
    <td class="left"><p>Quê quán</p></td>
    <td class="right">
           <p>
        <select name="quequan">
		  <option value="CanTho">TP.HCM</option>
          <option value="CanTho">Cần Thơ</option>
          <option value="DongThap">Đồng Tháp</option>
          <option value="SocTrang">Sóc Trăng</option>
		  <option value="CanTho">Bình Định</option>
          <option value="DongThap">Cà Mau</option> 
          <option value="DongThap">Hà Nội</option>
          <option value="SocTrang">Nam Định</option>
		  <option value="CanTho">Huế</option>
          <option value="DongThap">Đà Nẵng</option>
          <option value="SocTrang">Quảng Nam</option>
		  <option value="CanTho">Bạc Liêu</option>
          <option value="DongThap">Đồng Nai</option>
          <option value="SocTrang">Bình Dương</option>
          <option value="SocTrang">Bình Phước</option>
		  <option value="CanTho">Bình Thuận</option>
          <option value="DongThap">Ninh Thuận</option>
          <option value="SocTrang">Nghệ An</option>
        </select>
        </p>
    </td>
</tr>
<tr class="table">
    <td class="left"><p>Sở thích</p></td>
    <td class="right"><p><input type="checkbox" name="dienanh" checked> Điện ảnh <input type="checkbox" name="amnhac"> Âm nhạc <input type="checkbox" name="thethao"> Thể thao</p></td>
</tr>
<tr class="table">
    <td class="left"><p>Ghi chú cá nhân</p></td>
    <td class="right"><p><textarea style="height:100px;width:auto" name="ghichu"></textarea></p></td>
</tr>
<tr>
<td colspan="2">
  <center><input type="button" value="Cập nhật" name="luu"> <input type="reset" value="Nhập lại" name="nhaplai"></center>
</td>
</tr>
</table>
</form>
</div>
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>               </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div id="footer">
        <hr />
            <h5 class="text-center text-danger">Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>
</div><!-- End #container -->
<div id="loading">
    <span>Đang tải ...</span>
</div>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
