<%
session.setAttribute("tentaikhoan", null);
session.invalidate();
response.sendRedirect("DangNhap.jsp");
%>
