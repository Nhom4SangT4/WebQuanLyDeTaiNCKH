<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Thông tin cá nhân .::</title>
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
              	<a href="HomeDuyetDT.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
       			<a href="ThongtincanhanGV.jsp" class="list-group-item active"><span class="pull-right"></span>Thông tin cá nhân</a>
       			<a href="XemDanhSachDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Xem danh sách đề tài</a>
				<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý đề tài</a>
				<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
				<a href="GV_QuanLyDeTaiDuocPhanCong.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài được phân công</a>
				<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li><li class="active">Thông tin cá nhân</li></ol>    <div class="well-sm">
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
                <center><h1>THÔNG TIN CÁ NHÂN</h1></center>
              </div>
              <center><p class="note"><span class="req">*</span> Mời bạn điền đầy đủ thông tin</p></center>
              <form id="contactform" name="contact" action="thongtincanhanServlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtname" class="control-lable"><strong>Họ tên </strong></lable>
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
                      <lable for="txtemail" class="control-lable">Địa chỉ email </lable>
                      <input type="text" name="txtemail" id="txtemail" class="form-control" tabindex="4" placeholder="Địa chỉ email" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtsdt" class="control-lable">Số điện thoại </lable>
                      <input type="text" name="txtsdt" id="txtsdt" class="form-control" tabindex="5" placeholder="Số điện thoại" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtcmnd" class="control-lable">Số CMND </lable>
                      <input type="text" name="txtcmnd" id="txtcmnd" class="form-control" tabindex="6" placeholder="Số chứng minh nhân dân" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtnienkhoa" class="control-lable">Niên khóa </lable>
                      <input type="text" name="txtnienkhoa" id="txtnienkhoa" class="form-control" tabindex="7" placeholder="Niên khóa" required>
                    </div>

                    <div class="form-group">
                      <lable for="rdogiotinh" class="control-lable">Giới tính </lable>
                      <label class="radio-inline">
                        <input type="radio" name="rdogioitinh" id="rdonam" checked="checked" required> Nam
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="rdogioitinh" id="rdonu" required> Nữ
                      </label>
                    </div>

                    <div class="form-group">
                      <lable for="optdiachi" class="control-lable">Địa chỉ</lable>
                      <select class="form-control">
                        <option value="tphcm">TP.HCM</option>
                        <option value="cantho">Cần Thơ</option>
                        <option value="dongthap">Đồng Tháp</option>
                        <option value="soctrang">Sóc Trăng</option>
                        <option value="binhdinh">Bình Định</option>
                        <option value="camau">Cà Mau</option> 
                        <option value="hanoi">Hà Nội</option>
                        <option value="namdinh">Nam Định</option>
                        <option value="hue">Huế</option>
                        <option value="danang">Đà Nẵng</option>
                        <option value="quangnam">Quảng Nam</option>
                        <option value="baclieu">Bạc Liêu</option>
                        <option value="dongnai">Đồng Nai</option>
                        <option value="binhduong">Bình Dương</option>
                        <option value="binhphuoc">Bình Phước</option>
                        <option value="binhthuan">Bình Thuận</option>
                        <option value="ninhthuan">Ninh Thuận</option>
                        <option value="nghean">Nghệ An</option>
                      </select>
                    </div>


                    <div class="form-group">
                          <label for="txtngaysinh" class="control-label">Ngày sinh </label>
                          <input id="txtngaysinh" name="txtngaysinh" min="2000-01-01" type="date" class="txt" tabindex="9" placeholder="mm/dd/yyyy" required/>
                    </div>


                    <div class="form-group">
                      <lable for="txtghichu" class="control-lable">Ghi chú cá nhân </lable>
                      <textarea type="text" rows="5" name="txtghichu" id="txtghichu" class="form-control" tabindex="10" placeholder="Ghi chú cá nhân" required> </textarea>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" value="Cập nhật">
                      <input type="reset" id="resetbtn" name="reset" class="btn btn-primary"  value="Nhập lại">
                    </div>
                  </div> 
                </table>
              </form>
            </div>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li><li class="active">Thông tin cá nhân</li></ol>               </div>
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