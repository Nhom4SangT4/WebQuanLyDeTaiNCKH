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
       	<a href="HomeSinhVien.jsp" class="list-group-item "><span class="pull-right"></span>Trang Chủ</a>
		<a href="ThongTinCaNhanSV.jsp" class="list-group-item"><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item active"><span class="pull-right"></span>Đăng kí Đề Tài</a>
		<a href="TinhTrangDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Tình Trạng Đề Tài</a>
		<a href="HuyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Hủy Đề Tài</a>            
    	<a href="NopBaoCao.jsp" class="list-group-item"><span class="pull-right"></span>Nộp Báo Cáo</a>
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Đăng Ký</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
<div id="w">
<div class="body">
	<center><h1>Đăng Ký Đề Tài Sinh Viên</h1></center>
<form id="contactform" name="contact" action="dangkydetaiServlet" method="post">
  <p class="note"><span class="req">*</span> Mời bạn điền đầy đủ thông tin</p>
  <table border="0" cellpadding="0" cellspacing="0">
  <div class="row">
    <lable for="name">Họ Tên: <span class="req">*</span></lable>
    <input type="text" name="txtname" id="txtname" class="txt" tabindex="1" placeholder="Họ và tên" required>
  </div>
   
  <div class="row">
    <label for="MSSV">MSSV: <span class="req">*</span></label>
    <input type="text" name="txtmssv" id="txtmssv" class="txt" tabindex="2" placeholder="Mã số sinh viên" required>
  </div>
   
   <div class="row">
    <label for="Khoa">Khoa: <span class="req">*</span></label>
    <input type="text" name="txtkhoa" id="txtkhoa" class="txt" tabindex="3" placeholder="Khoa" required>
  </div>
   
   <div class="row">
    <label for="tenDT">Tên Đề Tài: <span class="req">*</span></label>
    <input type="text" name="txttendt" id="txttendt" class="txt" tabindex="4" placeholder="Tên đề tài" required>
  </div>
   
  <div class="row">
    <label for="LinhVuc">Lĩnh Vực: <span class="req">*</span></label>
    <input type="text" name="txtlinhvuc" id="txtlinhvuc" class="txt" tabindex="5" placeholder="Linh vực" required>
  </div>
  
  <div class="row">
    <label for="ThoiGian">Thời Gian Bắt Đầu: <span class="req">*</span></label>
    <input type="text" name="txtthoigian" id="txtthoigian" class="txt" tabindex="6" placeholder="Thời gian nghiên cứu" required>
  </div>
  <div class="row">
    <label for="ThoiGian">Thời Gian Kết Thúc: <span class="req">*</span></label>
    <input type="text" name="txtthoigian" id="txtthoigian" class="txt" tabindex="6" placeholder="Thời gian hoàn thành nghiên cứu" required>
  </div>
   
   <div class="row">
    <label for="KinhPhi">Kinh Phí: <span class="req">*</span></label>
    <input type="text" name="txtkinhphi" id="txtkinhphi" class="txt" tabindex="7" placeholder="Kinh phí dự kiến" required>
  </div>
   
  <div class="row">
    <label for="message">Ghi Chú: <span class="req"></span></label>
    <textarea name="ghichu" id="ghichu" class="txtarea" tabindex="8" required></textarea>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" tabindex="9" value="Đăng Ký">
    </div>
    </table>
</form>
</div>
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Đăng Ký</li></ol>               </div>
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
<script type="text/javascript" src="bootstrap.min.js"></script>
</body>
</html>