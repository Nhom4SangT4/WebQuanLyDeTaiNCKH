<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!doctype html>
<html lang="en-US">
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>::. Đăng Ký Đề Tài .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/styles.css">
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
			<div id="pnTopDisplay" style="width:1366px;float:left;
">
				<div id="ctl05_portlet_1cfe540a-31bb-41fd-a3b8-367e8dd6581a" style="width:1100px;float:left;padding:15px 0px 0px 0px;">
					<div class="logo_ute"><a href="#"><img alt="" src="skpt_banner_2.jpg" width="1000" height="150"></a><br>
					</div>

				</div><div>
					<div class="sup_menu">
				<ul>
    			<li><a href="DangNhap.jsp">Đăng Xuất</a></li>
				</ul>
					</div>
				<div id="ctl05_portlet_9b8ba9cf-dd1c-4b80-91fe-8787110cd93b" style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>
					<marquee direction="right"><span style="text-align: left; font-size: 20px; font-family: arial; color: #ff0000;"><a href="#">ĐĂNG KÝ ĐỀ TÀI NGHIÊN CỨU KHOA HỌC</a>
</span></marquee>

				</div></div>

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
       		<a href="Home.jsp" class="list-group-item "><span class="pull-right"></span>Trang Chủ</a>
		<a href="ThongTinCaNhan.jsp" class="list-group-item "><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item "><span class="pull-right"></span>Đăng Ký Đề Tài</a>
		<a href="TinhTrangDeTai.jsp" class="list-group-item  active"><span class="pull-right"></span>Trình Trạng Đề Tài </a>
		<a href="GiaHan-HuyDeTai.jsp" class="list-group-item "><span class="pull-right"></span>Hủy Đề Tài </a>      
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="file:///F:/lap%20trinh%20web/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/Home.html">Home</a></li><li><a href="TinhTrangDeTai.jsp">Tình trạng Đề Tài</a></li><li class="active">Comment</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
  		<table>
		
	
		<tr align ="cenleft" bgcolor="#6495ED" height="30px" cellspacing="10"  align="Cenleft" cellspacing="20"> 
					<td width="500px" cellspacing="50px" >  SST </td>
					<td width="500px" cellspacing="50px" > Tên Đề Tài  </td>
					<td width="500px" > Điểm </td>
					
				</tr>
				
						<tr > 
							<td> 1</td>
							<td> Nhận Diên Giọng Nói </td>
							<td> 8 </td>
						</tr>

		</table>
	<form id="contactform" name="contact" action="commentServlet" method="post">
  
   
  <div class="row">
    <label for="message">Comment của GV : <span class="req"></span></label>
    <textarea name="txtComment" id="txtComment" class="txtarea" tabindex="1" required></textarea>
  </div>
  <div class="row">
    <label for="message">Comment: <span class="req"></span></label>
    <textarea name="cmtcuaban" id="cmtcuaban" class="txtarea" tabindex="8" required></textarea>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" tabindex="9" value="Gửi">
    </div>
</form>
			
		


	
	

                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li><a href="TinhTrangDeTai.jsp">Tình Trạng Đề Tài</a></li><li class="active">Comment</li></ol></ol>                 </div>
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