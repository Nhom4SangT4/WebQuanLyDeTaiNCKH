<%@ page import="mypack.Kiemtra" %> 
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
  <% 
  Connection connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/qldtnckh", "root", "123456");

  Statement statement = connection.createStatement() ;
  ResultSet resultset = 
  statement.executeQuery("select madetai, hoten, tendetai, linhvuc from dangkydetai where gvhuongdan='"+Kiemtra.hoten+"'") ; 
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Home .::</title>
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
       	<a href="XemDanhSachDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Xem danh sách đề tài</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý đề tài</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="GV_QuanLyDeTaiDuocPhanCong.jsp" class="list-group-item active"><span class="pull-right"></span>Quản lý đề tài được phân công</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>
  <h1>Danh sách Đề Tài đang hướng dẫn</h1>
  <table class="table" data-page-size="5">
    	<thead>
    		
                              <TR align="center">
              <th align="center" data-hide="phone"><u>MĐT</u></th>
              <th align="center" data-hide="phone"><u>Họ Tên</u></th>
              <th align="center" data-hide="phone,tablet"><u>Tên Đề Tài</u></th>
              <th align="center" data-hide="phone,tablet"><u>Lĩnh vực</u></th>
              <th align="center" data-hide="phone,tablet"><u>Chi Tiết</u></th>
            </TR>
    		<% while(resultset.next()){ %>
            <TR>
              <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD><a target="_blank" href="ChitietdetaiRenactive.jsp" class="btn btn-success btn-xs">Chi tiết</a></TD>
                
              </TR>
              <% } %>
    	<tfoot>
    		<tr>
    			<td colspan="6">
    				<div class="pagination pagination-centered"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-de-tai/44/page/2.html">2</a></li><li><a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-de-tai/44/page/3.html">3</a></li><li><a href="http://dkdt.fit.hcmute.edu.vn/danh-sach-de-tai/44/page/10.html">&raquo;</a></li></ul></div>
    			</td>
    		</tr>
    	</tfoot>
    </table>
</div>
<script>
$(document).ready(function(){
    $("#hinh_thuc").change(function(){
        //document.location.href = $(this).val();
        alert($(this).val());
    });
});
</script>
<script>
$(document).ready(function(){
    $("#lst_gv").change(function(){
        var id_gv = $(this).val();
        if (id_gv == 'all')
        {
            //return false;
            location.reload();
        }
        else
        {
            var cauhinh_id = '44';
            var cn_id = 'page'
            //alert(cn_id);
            var form_data_gv = {
                gv_id: id_gv,
                cauhinh_id: cauhinh_id,
                cn_id : cn_id
            };
            $.ajax({
                url:'http://dkdt.fit.hcmute.edu.vn/giang-vien-de-tai.html',
                type:'POST',
                cache:true,
                data: form_data_gv,
                success:function(msg_form_gv){
                    $("#show_detai").html(msg_form_gv);
                }
                });
                return false;
        }
    });  
});
 $(document).ajaxStart(function () {
        $("#loading").show();
    }).ajaxStop(function () {
        $("#loading").hide();
    });
</script>
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
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>               </div>
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