<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Quản Lý Đề Tài Nộp .::</title>
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
					<marquee direction="right"><span style="text-align: left; font-size: 20px; font-family: arial; color: #ff0000;"><a href="#">ĐĂNG KÍ ĐỀ TÀINGHIÊN CỨU KHOA HỌC</a>
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
		<a href="ThongTinCaNhan.jsp" class="list-group-item "><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Đăng kí Đề Tài</a>
		<a href="QuanLyDeTaiNop.jsp" class="list-group-item  active"><span class="pull-right"></span>Quản Lý Đề Tài Nộp</a>
		<a href="DangKyDeTai.jsp" class="list-group-item  "><span class="pull-right"></span>Tình Trạng Đề Tài</a>
		<a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Hủy Đề Tài</a>  
		
		
		
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Các Đề Tài Đã Nộp</li></ol>    <div class="well-sm"></div>
        </div>
    </div>
		
			
				
				<tr >  <table cellspacing="0" cellpadding="0" border="1" style="border-collapse:collapse;">
			<h4 color ="#6495ED " align= "center">Quản Lý Đề Tài Nộp</h1>

				<tr align ="center" bgcolor="#6495ED" height="30px" cellspacing="10"  align="Cenleft" cellspacing="20"> 
					<td width="3%" cellspacing="10" >  SST </td>
					<td width="30%" cellspacing="10" > Tên Đề Tài</td>
					<td width="20%" > Tên Giáo Viên </td>
					<td width="20%" >  Địa Chỉ Email </td>
					<td width="10%" cellspacing="10" > Thời gian nộp </td>
					<td width="10%"> File </td>
					
				</tr>
				
				<tr > 
					<td align ="center"> 1</td>
					<td > Nhận diên giọng nói </td>
					<td> Nguyễn Văn A</td>
					<td align ="">  nguyenvana@gmail.com</td>
					<td align ="center">  30/9/2015 </td>
					<td align ="center"> <a href="" target="_blank"> Chi tiết</a> </td>
				</tr>
					<td align ="center"> 2</td>
					<td > Nhận diện chuyển động </td>
					<td> Ly Kim Chi</td>
					<td align ="">  Lykimchi@gmail.com</td>
					<td align ="center">  30/7/2015 </td>
					<td align ="center"> <a href="" target="_blank"> Chi tiết</a> </td>
				</tr>
					
				
				
				
				<tr > 
					<td align ="center"> </td>
					<td >  </td>
					<td> </td>
					<td align =""> </td>
					<td align ="center"> </td>
					<td align ="center"> <a href="" target="_blank"> </a> </td>
				</tr>
				<form name="xuly" action="" method="post">
				<table border="0" cellpadding="0" cellspacing="0">
				</br>
				<div class="pannel-body">
					<form method="post" action=" " >
						<tr class="table">
					
							<td class="center"><label  for=" contactemail"> Email address </label></td>
							<td class="right"><input  type="email" class="form-controls id ="contactemail" placeholder="Nhập địa chỉ EMail"></td>
						
						</tr>
						<tr class="table">
						
							<td class="center" ><label   for=" contactsubject"> Subject </label></td>
							<td class="right"><input  type="text" class="form-controls id ="contactsubject" placeholder="Nhập Tiêu Đề"></td>
						
						</tr>
						
						<tr>
							<td><label for=" contactmessage"> Message</label></td>
							<td><textarea class="form-controls id ="contactmessage" rows="5" ></textarea></td>
						</tr>
						<tr> 
							<td><label for= "inputfile"> File Đính Kèm </label></td>
							<td><input type= "file" id ="inputfile"></td>
						</tr>
						<tr>
						
							<td align="center"><button   Type="submit" class = "btn btn-info"> Gửi </button></td>
							<td align = "right"> <a href="#" class="btn btn-info" role="button">Cập Nhật</a>
							<button type="button" class="btn btn-info">Thêm</button>
							<button type="button" class="btn btn-info"> Sửa</button>
							<button type="button" class="btn btn-danger">Xóa</button></td></td>
						</tr>
					
					</form>
					</div>
				</table>
				
				
			
			</table>
	
	
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