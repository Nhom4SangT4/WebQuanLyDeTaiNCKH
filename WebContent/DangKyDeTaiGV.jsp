<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
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
  <title>::. Đăng ký đề tài .::</title>
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
       	<a href="ThongtincanhanGV.jsp" class="list-group-item "><span class="pull-right"></span>Thông tin cá nhân</a>
       	<a href="XemDanhSachDeTai.jsp" class="list-group-item active"><span class="pull-right"></span>Xem danh sách đề tài</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài của tôi</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>
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
          <div id="w">
            <div class="panel panel-default">
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h1>ĐĂNG KÝ ĐỀ TÀI GIẢNG VIÊN</h1></center>
              </div>
              <center><p class="note"><span class="req">*</span> Mời bạn điền đầy đủ thông tin</p></center>
  					<table border="0" cellpadding="0" cellspacing="0">
              <form id="contactform" name="contact" action="dangkydetaiServlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtname" class="control-lable"><strong>Họ và tên </strong></lable>
                      <input  type="text" name="txtname" id="txtname" class="form-control" tabindex="1" placeholder="Họ và tên" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtmssv" class="control-lable">MSGV </lable>
                      <input type="text" name="txtmssv" id="txtmssv" class="form-control" tabindex="2" placeholder="Mã số sinh viên" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtkhoa" class="control-lable">Khoa </lable>
                      <input type="text" name="txtkhoa" id="txtkhoa" class="form-control" tabindex="3" placeholder="Khoa" required>
                    </div>

                    <div class="form-group">
                      <lable for="txttendetai" class="control-lable">Tên đề tài </lable>
                      <input type="text" name="txttendetai" id="txttendetai" class="form-control" tabindex="4" placeholder="Tên đề tài" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtlinhvuc" class="control-lable">Lĩnh vực </lable>
                      <input type="text" name="txtlinhvuc" id="txtlinhvuc" class="form-control" tabindex="5" placeholder="Lĩnh vực nghiên cứu" required>
                    </div>
                    
                    <div class="form-group">
                      <lable for="txtgvhuongdan" class="control-lable">Người hướng dẫn </lable>
                      <select name="txtgvhuongdan" id="txtgvhuongdan" class="form-control" tabindex="6" required>
                        <option value="TS. Dang Thanh Dung">TS. Đặng Thanh Dũng</option>
                        <option value="Th.S Nguyen Thi Thanh Van">Th.S Nguyễn Thị Thanh Vân</option>
                        <option value="Th.S Nguyen Tran Thi Van">Th.S Nguyễn Trần Thi Văn</option>
                        <option value="Th.S Nguyen Minh Dao">Th.S Nguyễn Minh Đạo</option>
                        <option value="Th.S Dang Thi Kim Giao">Th.S Đặng Thị Kim Giao</option>
                        <option value="Th.S Tran Cong Tu">Th.S Trần Công Tú</option>
                        </select>
                    </div>

                    <div class="form-group">
                          <label for="txtthoigianbatdau" class="control-label">Thời gian bắt đầu </label>
                          <input id="txtthoigianbatdau" name="txtthoigianbatdau" min="2000-01-01" type="date" class="txt" tabindex="7" placeholder="mm/dd/yyyy" required/>
                    </div>

					<div class="form-group">
                          <label for="txtthoigianketthuc" class="control-label">Thời gian kết thúc </label>
                          <input id="txtthoigianketthuc" name="txtthoigianketthuc" min="2000-01-01" type="date" class="txt" tabindex="8" placeholder="mm/dd/yyyy" required/>
                    </div>
                    
                    <div class="form-group">
                      <lable for="txtkinhphi" class="control-lable">Kinh phí dự kiến </lable>
                      <input type="text" name="txtkinhphi" id="txtkinhphi" class="form-control" tabindex="9" placeholder="Kinh phí" required>
                    </div>

                    <div class="form-group">
                      <lable for="ghichu" class="control-lable">Ghi chú </lable>
                      <textarea type="text" rows="5" name="ghichu" id="ghichu" class="form-control" tabindex="10" placeholder="Ghi chú đề tài" required> </textarea>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" tabindex="11" value="Đăng Ký">
                      <input type="reset" id="resetbtn" name="reset" class="btn btn-primary" tabindex="12"  value="Nhập lại">
                    </div>
                  </div> 
                </table>
              </form>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li><li class="active">Gia hạn-hủy đề tài</li></ol>               </div>
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