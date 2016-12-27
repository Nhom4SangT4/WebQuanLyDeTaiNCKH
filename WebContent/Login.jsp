<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<% 
	  request.setCharacterEncoding("UTF-8");
	  response.setCharacterEncoding("UTF-8");
	  response.setContentType("text/html;charset=UTF-8");
	  
	  String id = request.getParameter("txtid");
	  String pass = request.getParameter("txtpass");
	  int x=1;
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/qldtnckh","root","123456");
	  Statement sta = conn.createStatement();
	  String query = "SELECT * FROM taikhoan where tentaikhoan = '"+id+"' and matkhau= '"+pass+"'";
	  ResultSet quyen = sta.executeQuery(query);
	  if(quyen.next())
	  {	  
		 
		  if(quyen.getString("Nhom").equals("0"))
		  {
			  session.setAttribute("txtid", id);
			  String name = (String)session.getAttribute("txtid");
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!! "+name+"\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  out.println("location='PhanQuyenTaiKhoan.jsp'");
			  out.println("</script>");
	    	  //RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");    
			   
		  }
		  if(quyen.getString("Nhom").equals("1"))
		  {
			  session.setAttribute("txtid", id);
			  String name = (String)session.getAttribute("txtid");
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!! "+name+"\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  out.println("location='HomeSinhVien.jsp'");
			  out.println("</script>"); 
		  }
		  if(quyen.getString("Nhom").equals("2"))
		  {
			  session.setAttribute("txtid", id);
			  String name = (String)session.getAttribute("txtid");
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!!  "+name+"\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  out.println("location='HomeDuyetDT.jsp'");
			  out.println("</script>"); 
		  }
		  if(quyen.getString("Nhom").equals("3"))
		  {
			  session.setAttribute("txtid", id);
			  String name = (String)session.getAttribute("txtid");
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!! "+name+"\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  out.println("location='HomeNghiemThu.jsp'");
			  out.println("</script>"); 
		  }

	  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	}
	  else
	  {
		out.print("<script type=\"text/javascript\">");
		out.print("alert('Tài khoản hoặc mật khẩu không chính xác!');");
		out.print("</script>");
		out.println("<script type=\"text/javascript\">");				
		out.println("location='DangNhap.jsp'");
		out.println("</script>");
	} %>
</body>
</html>