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
  <title>::. Phân công phản biện .::</title>
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
                statement.executeQuery("select madetai, tendetai, TrangThai, gvphanbien, phongphanbien, thoigianphanbien from dangkydetai where TrangThai='CHO PHAN BIEN'") ; 
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
       		<a href="HomeNghiemThu.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
			<a href="NT_QuanLyDeTai.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý Đề Tài</a>
			<a href="NT_PhanCongPhanBien.jsp" class="list-group-item active"><span class="pull-right"></span>Phân Công Phản Biện </a>
			<a href="NT_GiaHanHuy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý Gia hạn-Hủy</a>
			<a href="NT_NghiemThuDeTai.jsp" class="list-group-item "><span class="pull-right"></span>Đánh Giá Đề Tài </a>
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Phân công phản biện</li></ol>
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
                <center><h1>DANH SÁCH ĐỀ TÀI CHỜ PHẢN BIỆN</h1></center>
              </div>
  <TABLE class="table table-hover" >
            <TR align="center">

                      
                      <th align="center" data-hide="phone"><u>Mã đề tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Tên đề tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Trạng thái</u></th>
                      <th align="center" data-hide="phone,tablet"><u>GV phản biện</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Phòng</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Ngày</u></th>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
            </TR>
            <% } %>
        </TABLE>
</div>

  	<div id="w">
            <div class="panel panel-default">
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h3>PHÂN CÔNG HỘI ĐỒNG PHẢN BIỆN</h3></center>
              </div>
  					<table border="0" cellpadding="0" cellspacing="0">
  					
              <form id="contactform" name="contact" action="phancongphanbienServlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtmadetai" class="control-lable"><strong>Mã đề tài </strong></lable>
                      <input  type="text" name="txtmadetai" id="txtmadetai" class="form-control" tabindex="1" placeholder="Mã đề tài" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtgvphanbien" class="control-lable">GV phản biện </lable>
                      <select name="txtgvphanbien" id="txtgvphanbien" class="form-control" tabindex="2" required>
                        <option value="TS. Dang Thanh Dung">TS. Đặng Thanh Dũng</option>
                        <option value="Th.S Nguyen Thi Thanh Van">Th.S Nguyễn Thị Thanh Vân</option>
                        <option value="Th.S Nguyen Tran Thi Van">Th.S Nguyễn Trần Thi Văn</option>
                        <option value="Th.S Nguyen Minh Dao">Th.S Nguyễn Minh Đạo</option>
                        <option value="Th.S Dang Thi Kim Giao">Th.S Đặng Thị Kim Giao</option>
                        <option value="Th.S Tran Cong Tu">Th.S Trần Công Tú</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                      <lable for="txtphongphanbien" class="control-lable">Phòng </lable>
                      <select name="txtphongphanbien" id="txtphongphanbien" class="form-control" tabindex="3" required>
                        <option value="a4101">A4-101</option>
                        <option value="a4102">A4-102</option>
                        <option value="a4201">A4-201</option>
                        <option value="a4202">A4-202</option>
                        <option value="a5203">A5-203</option>
                        <option value="a5204">A5-204</option>
                        <option value="a5302">A5-302</option>
                        <option value="a5303">A5-303</option>
                        </select>
                    </div>

					<div class="form-group">
                          <label for="txtthoigianphanbien" class="control-label">Thời gian phản biện </label>
                          <input id="txtthoigianphanbien" name="txtthoigianphanbien" min="2000-01-01" type="date" class="txt" tabindex="4" placeholder="mm/dd/yyyy" required/>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" tabindex="5" value="Xác nhận">
                    </div>
                  </div> 
                </table>
              </form>
              
            </div>
                    <ol class="breadcrumb">
  <li><a href="HomeAdmin.jsp">Home</a></li><li class="active">Quản Lý Tài Khoản</li></ol>              </div>
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
