/*package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAO;

/**
 * Servlet implementation class phanquyentaikhoanServlet
 */
@WebServlet("/capnhatthongtincanhanServlet")
public class capnhatthongtincanhanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public capnhatthongtincanhanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");    
	    PrintWriter out = response.getWriter();  
  		
  		String tentaikhoan = request.getParameter("txtid");
	    String hoten = request.getParameter("txthoten");
	    String mssv = request.getParameter("txtmssv");
	    String khoa = request.getParameter("txtkhoa");
	    String email = request.getParameter("txtemail");
	    String sdt = request.getParameter("txtsdt");
	    String socmnd = request.getParameter("txtsocmnd");
	    String nienkhoa = request.getParameter("txtnienkhoa");
	    String gioitinh = request.getParameter("rdogioitinh");
	    String diachi = request.getParameter("txtdiachi");
	    String ngaysinh = request.getParameter("txtngaysinh");
	    String ghichu = request.getParameter("txtghichu");
	    try{
	    	if(DAO.CapNhatThongTinCaNhan(tentaikhoan)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Cập Nhật Thông Tin Thành Công!!!\");");  
	    		out.print("</script>");
	    		RequestDispatcher rd=request.getRequestDispatcher("ThongTinCaNhanSV.jsp");    
				    rd.include(request,response); 
	    	   }
	    	else
	    	{
	    		RequestDispatcher rd=request.getRequestDispatcher("ThongTinCaNhanSV.jsp");    
				    rd.include(request,response); 
	    	}
	    		   
	       }
	    catch (Exception e) {
	    	e.printStackTrace();
		}   
		doGet(request, response);
	}

}
*/