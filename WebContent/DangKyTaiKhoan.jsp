<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en-US">
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>::. Đăng Ký Tài Khoản .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/styles.css">
  <link rel="stylesheet" media="all" type="text/css" href="CSS/boostrap.css">
  <link rel="stylesheet" media="all" type="text/css" href="CSS/boostrap.min.css">
 
</head>
<body>
<div id="w">
	<h1>Đăng Ký Tài Khoản</h1>
<form id="contactform" name="contact" method="post" action="dangkytaikhoanServlet">
  <center><p class="note"><span class="req">*</span> Mời Bạn điền đầy đủ thông tin</p></center>
  <div class="row">
    <label for="id">Tên Tài Khoản: <span class="req">*</span></label>
    <input type="text" name="txtid" id="id" class="txt" tabindex="1" placeholder="Tên tài khoản" required>
  </div>
   
  <div class="row">
    <label for="pass">Mật Khẩu: <span class="req">*</span></label>
    <input type="password" name="txtpass" id="pass" class="txt" tabindex="2" placeholder="Mật khẩu" required>
  </div>
   
  <div class="row">
    <label for="email">Email <span class="req">*</span></label>
    <input type="text" name="txtemail" id="email" class="txt" tabindex="3" placeholder="Address@gmail.com" required>
  </div>
   
  
   
  <div class="col-sm-0">
    <center><input type="submit" id="submitbtn" name="btndangky" class="btn btn-primary" tabindex="4" value="Đăng Ký"></center>
  </div>
  </div>
</form>
</body>
</html>