<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="java.sql.*" %>
<%@ page import="mypack.Kiemtra" %>
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
  <title>::. Thông tin cá nhân .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="js/jquery-3.1.1.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
</head>
<body>
<% 
  Connection connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/qldtnckh", "root", "123456");

Statement statement = connection.createStatement() ;
//ResultSet resultset = statement.executeQuery("select hoten, mssv, khoa, sdt, socmnd, nienkhoa, gioitinh, diachi, ngaysinh, ghichu from taikhoan where tentaikhoan="+Kiemtra.tentaikhoan+"") ; 
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
		<a href="ThongTinCaNhanSV.jsp" class="list-group-item active"><span class="pull-right"></span>Thông Tin Cá Nhân</a>
		<a href="DangKyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Đăng kí Đề Tài</a>
		<a href="TinhTrangDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Tình Trạng Đề Tài</a>
		<a href="GiaHan-HuyDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Gia Hạn - Hủy Đề Tài</a>
		<a href="NopBaoCaoSV.jsp" class="list-group-item"><span class="pull-right"></span>Nộp Báo Cáo</a>
		<a href="DanhSachCacDeTaiDaNghiemThu.jsp" class="list-group-item"><span class="pull-right"></span>Xem Đề Tài Đã Nghiệm Thu</a>
            </div>
          </div>
        </div>
          <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>
  <span>
              <span id="random_tin">
                <i class="icon-bullhorn"></i>&nbsp;
                <img src="images/bullet-blue-icon.png" />
              </span>
              <div class="panel panel-default">
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h1>THÔNG TIN CÁ NHÂN <% out.print("<td>"+ Kiemtra.hoten +"</td>"); %></h1></center>
              </div>
              <center><p class="note"><span class="req">**********</span></p></center>
  <table class="table" data-page-size="5">
  
    		<TR">
              <th align="center" data-hide="phone,tablet">Họ và tên </th>
              <TD> <% out.print("<td>"+ Kiemtra.hoten +"</td>"); %></td>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Mã số sinh viên </th>
              <TD> <% out.print("<td>"+ Kiemtra.mssv +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Khoa </th>
              <TD> <% out.print("<td>"+ Kiemtra.khoa +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Số điện thoại</th>
              <TD> <% out.print("<td>"+ Kiemtra.sdt +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Số CMND</th>
              <TD> <% out.print("<td>"+ Kiemtra.socmnd +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Niên khóa</th>
              <TD> <% out.print("<td>"+ Kiemtra.nienkhoa +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Giới tính</th>
              <TD> <% out.print("<td>"+ Kiemtra.gioitinh +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Địa chỉ</th>
              <TD> <% out.print("<td>"+ Kiemtra.diachi +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Ngày sinh</th>
              <TD> <% out.print("<td>"+ Kiemtra.ngaysinh +"</td>"); %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Ghi chú cá nhân</th>
              <TD> <% out.print("<td>"+ Kiemtra.ghichu +"</td>"); %></TD>
            </TR>
            
</div>
    </table>
    <div>
    <div class="panel-body">
  <!-- Trigger the modal with a button -->
  
  <button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#myModal">Cập nhật</button>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Cập nhật thông tin cá nhân</h4>
        </div>
        <form id="contactform" name="contact" action="thongtinsinhvienServlet" method="post">
        <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtname" class="control-lable"><strong>Họ và tên </strong></lable>
                      <input  type="text" name="txtname" id="txtname" class="form-control" tabindex="1" placeholder="Họ và tên" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtmssv" class="control-lable"><strong>MSSV</strong> </lable>
                      <input type="text" name="txtmssv" id="txtmssv" class="form-control" tabindex="2" placeholder="Mã số sinh viên" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtkhoa" class="control-lable">Khoa </lable>
                      <input type="text" name="txtkhoa" id="txtkhoa" class="form-control" tabindex="3" placeholder="Khoa" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtsdt" class="control-lable">Số điện thoại </lable>
                      <input type="text" name="txtsdt" id="txtsdt" class="form-control" tabindex="4" placeholder="Số điện thoại" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtsocmnd" class="control-lable">Số CMND </lable>
                      <input type="text" name="txtsocmnd" id="txtsocmnd" class="form-control" tabindex="5" placeholder="Số chứng minh nhân dân" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtnienkhoa" class="control-lable">Niên khóa </lable>
                      <input type="text" name="txtnienkhoa" id="txtnienkhoa" class="form-control" tabindex="6" placeholder="Niên khóa" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtgioitinh" class="control-lable">Giới tính</lable>
                      <select name="txtgioitinh" id="txtgioitinh" class="form-control" tabindex="7" required>
                        <option value="Nam">Nam</option>
                        <option value="Nu">Nu</option>
                        <option value="Khac">Khac</option>
                      </select>
                    </div>

                    <div class="form-group">
                      <lable for="txtdiachi" class="control-lable">Địa chỉ</lable>
                      <select name="txtdiachi" id="txtdiachi" class="form-control" tabindex="8" required>
                        <option value="TP.HCM">TP.HCM</option>
                        <option value="Can Tho">Cần Thơ</option>
                        <option value="Dong Thap">Đồng Tháp</option>
                        <option value="Soc Trang">Sóc Trăng</option>
                        <option value="Binh Dinh">Bình Định</option>
                        <option value="Ca Mau">Cà Mau</option> 
                        <option value="Ha Noi">Hà Nội</option>
                        <option value="Nam Dinh">Nam Định</option>
                        <option value="Hue">Huế</option>
                        <option value="Da Nang">Đà Nẵng</option>
                        <option value="Quang Nam">Quảng Nam</option>
                        <option value="Bac Lieu">Bạc Liêu</option>
                        <option value="Dong Nai">Đồng Nai</option>
                        <option value="Binh Duong">Bình Dương</option>
                        <option value="Binh Phuoc">Bình Phước</option>
                        <option value="Binh Thuan">Bình Thuận</option>
                        <option value="Ninh Thuan">Ninh Thuận</option>
                        <option value="Nghe An">Nghệ An</option>
                      </select>
                    </div>


                    <div class="form-group">
                          <label for="txtngaysinh" class="control-label">Ngày sinh </label>
                          <input id="txtngaysinh" name="txtngaysinh" min="1900-01-01" type="date" class="txt" tabindex="9" placeholder="mm/dd/yyyy" required/>
                    </div>


                    <div class="form-group">
                      <lable for="txtghichu" class="control-lable">Ghi chú cá nhân </lable>
                      <textarea type="text" rows="5" name="txtghichu" id="txtghichu" class="form-control" tabindex="10" placeholder="Ghi chú cá nhân" required> </textarea>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" tabindex="11" value="Cập nhật">
                      <input type="reset" id="resetbtn" name="reset" class="btn btn-primary"  tabindex="12" value="Nhập lại">
                    </div>
                  </div>
                  </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  </div>
 </div>
</div>
  <div class="well-sm">
        
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