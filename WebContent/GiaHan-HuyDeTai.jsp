<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Hủy đề tài .::</title>
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
       	<a href="HomeSinhVien.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
		<a href="ThongTinCaNhanSV.jsp" class="list-group-item "><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Đăng kí Đề Tài</a>
		<a href="TinhTrangDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Tình Trạng Đề Tài</a>
		<a href="GiaHan-HuyDeTai.jsp" class="list-group-item active"><span class="pull-right"></span>Gia Hạn - Hủy Đề Tài</a>
		<a href="NopBaoCao.jsp" class="list-group-item"><span class="pull-right"></span>Nộp Báo Cáo</a>     
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Gia Hạn - Hủy Đề Tài</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
                        <div id="w" class="body">
	<h1>Gia Hạn - Hủy Đề Tài</h1>
<form id="contactform" name="contact" action="dangkydetaiServlet" method="post">
  <p class="note"><span class="req">*</span> Điền đầy đủ thông tin</p>
  <table border="0" cellpadding="0" cellspacing="0">
  
  <div class="table">
    <lable for="name">Họ Tên: <span class="req">*</span></lable>
    <input type="text" name="txtname" id="txtname" class="txt" tabindex="1" placeholder="Họ và tên" required></input>
  </div>
   
  <div class="table">
    <lable for="MSSV">MSSV: <span class="req">*</span></lable>
    <input type="text" name="txtmssv" id="txtmssv" class="txt" tabindex="2" placeholder="Mã số sinh viên" required></input>
  </div>
  
  <div class="table">
    <label for="MaDeTai">Mã đề tài: <span class="req">*</span></label>
    <input type="text" name="txtmadetai" id="txtmadetai" class="txt" tabindex="2" placeholder="Mã đề tài" required>
  </div>
   
   <div class="table">
    <label for="GVHD">GVHD: <span class="req">*</span></label>
    <input type="text" name="txtgvhd" id="txtgvhd" class="txt" tabindex="3" placeholder="Giáo viên hướng dẩn" required>
  </div>
   
  
   
  <div class="table">
    <label for="message">Lý Do Hủy-Gia Hạn đề tài: <span class="req"></span></label>
    <textarea name="ghichu" id="ghichu" class="txtarea" tabindex="8" required></textarea>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" class="btn btn-Success" tabindex="9" value="Gửi">
  </div>
  </table>
</form>
</div>
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Hủy-Gia Hạn Đề Tài</li></ol>               </div>
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
</body>
</html>