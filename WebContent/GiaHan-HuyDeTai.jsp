<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% String username = (String)session.getValue("tentaikhoan");
    if(username==null)
    {
    	response.sendRedirect("DangNhap.jsp");
    	
    	}
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Gia hạn-Hủy đề tài .::</title>
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
                statement.executeQuery("select madetai, tendetai, TrangThai, giahanhuy from dangkydetai where TrangThai='DUYET' and diem is null") ; 
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
       	<a href="HomeSinhVien.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
              <a href="ThongTinCaNhanSV.jsp" class="list-group-item "><span class="pull-right"></span>Thông Tin Cá Nhân</a>
              <a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Đăng kí Đề Tài</a>
              <a href="TinhTrangDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Tình Trạng Đề Tài</a>
              <a href="GiaHan-HuyDeTai.jsp" class="list-group-item active"><span class="pull-right"></span>Gia Hạn-Hủy Đề Tài</a>
              <a href="NopBaoCaoSV.jsp" class="list-group-item"><span class="pull-right"></span>Nộp Báo Cáo</a>     
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Gia hạn-Hủy đề tài</li></ol>
  <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
                        <div id="w">
  		<div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h1>DANH SÁCH ĐỀ TÀI ĐÃ DUYỆT</h1></center>
              </div>
  <TABLE class="table table-hover" >
            <TR align="center">

                      
                      <th align="center" data-hide="phone"><u>Mã đề tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Tên đề tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Trạng Thái</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Xin Gia hạn-Hủy</u></th>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
            </TR>
            <% } %>
        </TABLE>
</div>

  	<div id="w">
            <div class="panel panel-default">
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h3>ĐƠN XIN GIA HẠN HỦY ĐỀ TÀI</h3></center>
              </div>
  					<table border="0" cellpadding="0" cellspacing="0">
  					
              <form id="contactform" name="contact" action="giahanhuyServlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtmadetai" class="control-lable"><strong>Mã đề tài </strong></lable>
                      <input  type="text" name="txtmadetai" id="txtmadetai" class="form-control" tabindex="1" placeholder="Mã đề tài" required>
                    </div>

					<div class="form-group">
                      	<lable for="txtgiahanhuy" class="control-lable">Về vấn đề </lable>
                      	<select name="txtgiahanhuy" id="txtgiahanhuy" class="form-control" tabindex="2" required>
                        <option value="Xin Gia Han">Xin Gia Hạn</option>
                        <option value="Xin Huy">Xin Hủy</option>
                        </select>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" tabindex="3" value="Xác nhận">
                    </div>
                  </div> 
                </table>
              </form>
              
            </div>
  <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
                        <small>
                <a href="http://dkdt.fit.hcmute.edu.vn/tin-tu-giao-vu/thong-bao-dang-ky-de-tai-tieu-luan-chuyen-nganh-khoa-12-201509061441549098.html">
                Thông báo đăng ký đề tài tiểu luận chuyên ngành khóa 12 <small style="color: rgb(87,87,87);">(16:29 06/09/2015)</small>
                </a>
            </small>
            <img src="images/new1.gif"/>
            </span>
           
        </span>    
    </div>
                        
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Gia hạn-Hủy đề tài</li></ol>               </div>
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
