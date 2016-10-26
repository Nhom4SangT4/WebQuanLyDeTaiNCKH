<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Quản Lý Tài Khoản Giáo Viên .::</title>
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
		
       	<a href="Home.jsp" class="list-group-item "><span class="pull-right"></span>Trang Chủ</a>
		<a href="HomeAdmin.jsp" class="list-group-item  "><span class="pull-right"></span>Thông Báo Mới</a>
		
		<a href="QuanLyTaiKhoanGV.jsp" class="list-group-item active"><span class="pull-right"></span>Quản Lý Tài Khoản Giáo Viên</a>
		<a href="QuanLyTaiKhoanSV.jsp" class="list-group-item"><span class="pull-right"></span>Quản Lý Tài Khoản Sinh Viên</a>
		
		
		
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Quản Lý Tài Khoản Giáo Viên</li></ol>    <div class="well-sm"></div>
        </div>
    </div>
		
			
				
				<tr >  <table cellspacing="0" cellpadding="0" border="1" style="border-collapse:collapse;">
			<h4 color ="#6495ED " align= "center">Quản Lý Tài Khoản Giáo Viên</h1>

				<tr align ="center" bgcolor="#6495ED" height="30px" cellspacing="10"  align="Cenleft" cellspacing="20"> 
					<td width="3%" cellspacing="10" >  SST </td>
					<td width="10%" cellspacing="10" > Tên Tài Khoản</td>
					<td width="10%" cellspacing="10" > Mât Khẩu</td>
					<td width="8%" cellspacing="10" > Quyền Đăng Nhập</td>
					<td width="10%" > Mã Giáo Viên </td>
					<td width="25%" > Tên Giáo Viên </td>
					<td width="10%" >  Địa Chỉ Email </td>
					<td width="10%"> Số Điện Thoại </td>
					<td width="25%" >  Địa Chỉ </td>
					<td width="8%"> Đang Đăng Nhập </td>
					
				</tr>
				
				<tr > 
					<td align ="center"> 1</td>
					<td align ="center"> nguyenvana </td>
					<td align ="center" > abcxyz </td>
					<td align ="center" > GV </td>
					<td align ="center"> GV2352 </td>
					<td align ="center"> Nguyễn Văn A</td>
					<td align ="center">  nguyenvana@gmail.com</td>
					<td align ="center">  09253655462 </td>
					<td align ="center">  Thủ Đức - HCM </td>
					<td align ="center"> <input checked="checked" type="checkbox"> </td>
				</tr>
					<td align ="center"> 2</td>
					<td align ="center"> kimchikorea </td>
					<td align ="center" > abcxyz </td>
					<td align ="center" > GV </td>
					<td align ="center"> GV2323 </td>
					<td align ="center"> Ly Kim Chi</td>
					<td align ="center">  kimchikorea@gmail.com</td>
					<td align ="center">  016656565623 </td>
					<td align ="center">  Thủ Đức - HCM </td>
					<td align ="center"> <input type="checkbox"> </td>
				</tr>
					
				<tr > 
				<td align ="center"> 3</td>
					<td align ="center"> phandangluu11 </td>
					<td align ="center" > dfjsdsdf </td>
					<td align ="center" > HD </td>
					<td align ="center"> GV11111 </td>
					<td align ="center"> Phan Đăng Lưu </td>
					<td align ="center">  phandangluu11@gmail.com</td>
					<td align ="center">  01254326262 </td>
					<td align ="center">  Bình Thạnh - HCM </td>
					<td align ="center"> <input checked="checked" type="checkbox"> </td>
				
				<tr > 
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center" >  </td>
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">   </td>
					<td align ="center"> <input  type="checkbox"> </td>
				</tr>
				
				
				<tr > 
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center" >  </td>
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">   </td>
					<td align ="center"> <input  type="checkbox"> </td>
				</tr>
				
				
				<tr > 
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center" >  </td>
					<td align ="center">  </td>
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">   </td>
					<td align ="center"> <input  type="checkbox"> </td>
				</tr>
				
				
				<tr > 
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center" >  </td>
					<td align ="center">  </td>
					<td align ="center"> </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">  </td>
					<td align ="center">   </td>
					<td align ="center"> <input  type="checkbox"> </td>
				</tr>
				
				<table  >
				</br>
					<td align = "right ">
					<div class="container" >
					<a href="#" class="btn btn-info" role="button">Cập Nhật</a>
					<button type="button" class="btn btn-info">Thêm Tài Khoản</button>
					<button type="button" class="btn btn-info"> Sửa</button>
					<button type="button" class="btn btn-danger">Xóa</button>
					</td>
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
