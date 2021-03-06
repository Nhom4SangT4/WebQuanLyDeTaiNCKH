<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!doctype html>
<html lang="en-US">
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>::. Comment .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/styles.css">
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
  statement.executeQuery("select madetai, tendetai, Comment from dangkydetai where TrangThai='DUYET'") ; 
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
       	<a href="HomeDuyetDT.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
		<a href="QuanLy.jsp" class="list-group-item active"><span class="pull-right"></span>Quản Lý</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="Home.jsp">Home</a></li><li><a href="QuanLy.jsp">Quản Lý</a></li><li class="active">Comment</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
                        <div id="w">
	<h1>Danh Sách Đề Tài</h1>
	<TABLE class="table table-hover" >
            <TR align="center">

                      
                      <th align="center" data-hide="phone"><u>Mã Đề Tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Tên Đề Tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Comment</u></th>
            </TR>
			<% while(resultset.next()){ %>
            <TR>
              	<TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
              </TR>
              <% } %>
        </TABLE>
</div>

	<form id="contactform" name="contact" action="commentServlet" method="post">
  
  <div class="row">
    <label for="name">Mã Đề Tài: <span class="req"></span></label>
    <input type="text" name="txtMa" id="txtMa" class="txt" tabindex="1" placeholder="Mã Đề Tài" required>
  </div>
   
  <div class="row">
    <label for="message">Comment: <span class="req"></span></label>
    <textarea name="txtComment" id="txtComment" class="txtarea" tabindex="2" required></textarea>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" tabindex="3" value="Hoàn Thành">
    </div><br><br>
</form>

                    <ol class="breadcrumb">
  <li><a href="Home.jsp">Home</a></li><li><a href="QuanLy.jsp">Quản Lý</a></li><li class="active">Comment</li></ol></ol>                 </div>
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