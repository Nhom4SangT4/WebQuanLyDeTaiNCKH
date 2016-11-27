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
		<a href="GiaHan-HuyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Gia Hạn-Hủy Đề Tài</a>            
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
  <center><p class="note"><span class="req">*</span> Mời bạn điền đầy đủ thông tin</p></center>
  <table border="0" cellpadding="0" cellspacing="0">
<tr class="table">
    <td class="left"><p>Họ tên </p></td>
    <td class="right"><p><input type="text" name="txtname" id="txtname" class="txt" tabindex="1" placeholder="Họ và tên" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>MSSV </p></td>
    <td class="right"><p><input type="text" name="txtmssv" id="txtmssv" class="txt" tabindex="2" placeholder="Mã số sinh viên" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Khoa </p></td>
    <td class="right"><p><input type="text" name="txtkhoa" id="txtkhoa" class="txt" tabindex="3" placeholder="Khoa" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Tên đề tài </p></td>
    <td class="right"><p><input type="text" name="txttendetai" id="txttendetai" class="txt" tabindex="4" placeholder="Tên đề tài" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Lĩnh vực </p></td>
    <td class="right"><p><input type="text" name="txtlinhvuc" id="txtlinhvuc" class="txt" tabindex="5" placeholder="Linh vực" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Thời gian bắt đầu </p></td>
    <td class="right"><p><input type="date" name="txtthoigianbatdau" min="2000-01-01" id="txtthoigianbatdau" class="txt" tabindex="6" placeholder="Thời gian bắt đầu" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Thời gian kết thúc </p></td>
    <td class="right"><p><input type="date" name="txtthoigianketthuc" min="2000-01-01"id="txtthoigianketthuc" class="txt" tabindex="7" placeholder="Thời gian hoàn thành dự kiến" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Kinh phí dự kiến </p></td>
    <td class="right"><p><input type="text" name="txtkinhphi" id="txtkinhphi" class="txt" tabindex="8" placeholder="Kinh phí dự kiến" required></p></td>
</tr>
<tr class="table">
    <td class="left"><p>Ghi chú </p></td>
    <td class="right"><p><textarea name="ghichu" id="ghichu" class="txtarea" tabindex="9" required></textarea></p></td>
</tr>
<tr>
<td colspan="2">
  <center><input type="submit" id="submitbtn" name="button" class="btn btn-success" tabindex="10" value="Đăng Ký"></center>
</td>
</tr>
   
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