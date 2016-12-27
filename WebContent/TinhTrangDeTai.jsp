<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Trình Trạng Đề Tài .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <script type="js/jquery-3.1.1.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
  
</head>
<body>
<% 


  Connection connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/qldtnckh", "root", "123456");

  Statement statement = connection.createStatement() ;
  ResultSet resultset = 
  statement.executeQuery("select madetai, tendetai, linhvuc, TrangThai  from dangkydetai") ; 
  %>
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
    
    			<li><a href="logout.jsp">Đăng Xuất</a></li>
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
		<a href="ThongTinCaNhanSV.jsp" class="list-group-item "><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Đăng kí Đề Tài</a>
		<a href="TinhTrangDeTai.jsp" class="list-group-item active"><span class="pull-right"></span>Tình Trạng Đề Tài</a>
		<a href="GiaHan-HuyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Gia Hạn - Hủy Đề Tài</a>
		<a href="NopBaoCaoSV.jsp" class="list-group-item"><span class="pull-right"></span>Nộp Báo Cáo</a>      
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="http://dkdt.fit.hcmute.edu.vn/">Home</a></li><li class="active">Thông tin giảng viên</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="http://dkdt.fit.hcmute.edu.vn/public/images/bullet-blue-icon.png" />
                        <small>
                <a href="http://dkdt.fit.hcmute.edu.vn/tin-tu-giao-vu/thong-bao-dang-ky-de-tai-tieu-luan-chuyen-nganh-khoa-13-201509061441549098.html">
                Thông báo đăng ký đề tài tiểu luận chuyên ngành khóa 13 <small style="color: rgb(87,87,87);">(18:16 09/09/2016)</small>
                </a>
            </small>
            <img src="http://dkdt.fit.hcmute.edu.vn/public/images/new1.gif"/>
            </span>
            <span id="time_bar">
            <span id="time" class="label label-primary pull-right"><i class="icon-time"></i> 12 giờ 10 phút, ngày 19 tháng 12, 2016</span><br>            </span>
        </span>    
    </div>
                        <div class="panel panel-default">
                        <div  style="color: rgb(7, 132, 163);" class="panel-heading">
                            <h4 style="font-family: verdana;color:rgb(87,87,87);">Tình Trạng Đề Tài</h4>
                        </div>
                        <div class="panel-body">
                            <div id="search">
    <select id="search_cn" class="form-control text-center">
                            <option value="http://dkdt.fit.hcmute.edu.vn/danh-sach-giang-vien/page/1.html" selected>Tất cả đề tài</option>
                                        <option value="http://dkdt.fit.hcmute.edu.vn/giang-vien-chuyen-nganh/cong-nghe-phan-mem-1.html">Chờ Duyệt</option>
                                            <option value="http://dkdt.fit.hcmute.edu.vn/giang-vien-chuyen-nganh/he-thong-thong-tin-2.html">Đã Duyệt</option>
                                            <option value="http://dkdt.fit.hcmute.edu.vn/giang-vien-chuyen-nganh/mang-may-tinh-3.html">Chờ Phản Biện</option>
                                            <option value="http://dkdt.fit.hcmute.edu.vn/giang-vien-chuyen-nganh/tin-hoc-co-so-4.html">Đã Phản Biện</option>
                                            <option value="http://dkdt.fit.hcmute.edu.vn/giang-vien-chuyen-nganh/su-pham-5.html">Đã Nghiệm Thu</option>
                        </select>
</div>
<br />
<table class="table demo" data-page-size="5">
	<thead>
		<TR align="center">
              <th align="center" data="true" style="width: 200px!important;">Mã Đề Tài</th>
              <th align="center" data-hide="phone,tablet">Tên Đề Tài</th>
              <th align="center" data-hide="phone,tablet">Lĩnh Vực</th>
              <th align="center" data-hide="phone,tablet">Trạng Thái</th>
        </TR>
	</thead>
	<tbody>
		<% while(resultset.next()){ %>
            <TR>
              <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                
                
              </TR>
              <% } %>
    </tbody>
</table>
                        </div>
                    </div>

                        
                    <ol class="breadcrumb">
  <li><a href="HomeSinhVien.jsp">Home</a></li><li class="active">Tình Trạng Đề  Tài</li></ol>               </div>
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
