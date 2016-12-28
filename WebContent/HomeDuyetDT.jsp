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
  statement.executeQuery("select * from dangkydetai ") ; 
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                            <a href="HomeDuyetDT.jsp" class="list-group-item active"><span class="pull-right"></span>Trang Chủ</a>
                            <a href="ThongtincanhanGV.jsp" class="list-group-item "><span class="pull-right"></span>Thông tin cá nhân</a>
                            <a href="XemDanhSachDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Xem danh sách đề tài</a>
                            <a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý đề tài của tôi</a>
                            <a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
                            <a href="GV_QuanLyDeTaiDuocPhanCong.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài được phân công</a>
                            <a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
                      <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>


                      <div class="table col-sm-5">
                        <div class="row">
                            <h3>Tìm kiếm</h3>
                            <div id="custom-search-input">
                                <div class="input-group col-md-12">
                                    <input type="text" id="system-search" class="search-query form-control" placeholder="Nhập từ khóa..." required />
                                    <span class="input-group-btn">
                                        <button class="btn btn-danger" type="button">
                                            <span class=" glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function() {
                            var activeSystemClass = $('.list-group-item.active');
    //something is entered in search form
    $('#system-search').keyup( function() {
     var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {

            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});
</script>

<div class="container">
    <div class="row">    

    </div>
</div>


  <h1>Danh sách Đề Tài</h1>
  <table class="table" data-page-size="5">
    	<thead>
    		
                              <TR align="center">
              <th align="center" data-hide="phone"><u>MĐT</u></th>
              <th align="center" data-hide="phone"><u>Họ Tên</u></th>
              <th align="center" data-hide="phone,tablet"><u>MSSV</u></th>
              <th align="center" data-hide="phone,tablet"><u>Khoa</u></th>
              <th align="center" data-hide="phone,tablet"><u>Tên Đề Tài</u></th>
              <th align="center" data-hide="phone,tablet"><u>Giảng viên HD</u></th>
              <th align="center" data-hide="phone,tablet"><u>Lĩnh vực</u></th>
              <th align="center" data-hide="phone,tablet"><u>Trạng Thái</u></th>
              <th align="center" data-hide="phone,tablet"><u>Chi Tiết</u></th>
            </TR>
    		<% while(resultset.next()){ %>
            <TR>
              <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(20) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(11) %></TD>
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

<tfoot>
 
</tfoot>
</table>
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