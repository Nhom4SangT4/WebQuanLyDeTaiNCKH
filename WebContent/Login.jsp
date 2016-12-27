<%@ page import="mypack.Kiemtra" %>
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
	  ResultSet rs;
	  rs =sta.executeQuery("SELECT * FROM taikhoan where tentaikhoan = '"+id+"' and matkhau= '"+pass+"'") ;
	  //ResultSet quyen = sta.executeQuery(query);
	  if(rs.next())
	  {	  
		  //session.setAttribute("tentaikhoan", id);
		    Kiemtra.tentaikhoan=rs.getString(1);
	    	Kiemtra.matkhau=rs.getString(2);
	    	Kiemtra.hoten=rs.getString(5);
	    	Kiemtra.mssv=rs.getString(6);
	    	Kiemtra.khoa= rs.getString(7);
	    	Kiemtra.sdt= rs.getString(8);
	    	Kiemtra.socmnd= rs.getString(9);
	    	Kiemtra.nienkhoa= rs.getString(10);
	    	Kiemtra.gioitinh= rs.getString(11);
	    	Kiemtra.diachi= rs.getString(12);
	    	Kiemtra.ngaysinh= rs.getString(13);
	    	Kiemtra.ghichu= rs.getString(14);
	    
	       session.setAttribute("tentaikhoan", id);
		  if(rs.getString("Nhom").equals("0"))
		  {
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!!\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  //out.println("location='PhanQuyenTaiKhoan.jsp'");
			  //out.println("</script>");
			  RequestDispatcher rd= request.getRequestDispatcher("PhanQuyenTaiKhoan.jsp");
		      rd.include(request, response);
	    	  //RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");    
			   
		  }
		  if(rs.getString("Nhom").equals("1"))
		  {
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!!\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  //out.println("location='HomeSinhVien.jsp'");
			  //out.println("</script>"); 
	    	  RequestDispatcher rd= request.getRequestDispatcher("HomeSinhVien.jsp");
		        rd.include(request, response);
		  }
		  if(rs.getString("Nhom").equals("2"))
		  {
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!!\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  //out.println("location='HomeDuyetDT.jsp'");
			  //out.println("</script>"); 
	    	  RequestDispatcher rd= request.getRequestDispatcher("HomeDuyetDT.jsp");
		        rd.include(request, response);
			  
		  }
		  if(rs.getString("Nhom").equals("3"))
		  {
			  out.print("<script>");
			  out.print("alert(\"Đăng Nhập Thành Công!!!\");");  
	    	  out.print("</script>");
	    	  out.println("<script type=\"text/javascript\">");				
			  //out.println("location='HomeNghiemThu.jsp'");
			  //out.println("</script>"); 
	    	  RequestDispatcher rd= request.getRequestDispatcher("HomeNghiemThu.jsp");
		        rd.include(request, response);
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
		//out.println("<script type=\"text/javascript\">");				
		//out.println("location='DangNhap.jsp'");
		//out.println("</script>");
		RequestDispatcher rd= request.getRequestDispatcher("DangNhap.jsp");
        rd.include(request, response);
	} %>
</body>
</html>