package com.servlet;

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
 * Servlet implementation class dangkytaikhoanServlet
 */
@WebServlet("/dangkytaikhoanServlet")
public class dangkytaikhoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkytaikhoanServlet() {
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
	    String matkhau = request.getParameter("txtpass");
	    String email = request.getParameter("txtemail");
	    try{
	    	if(DAO.DangKyTaiKhoan(tentaikhoan, matkhau, email)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Đăng Ký Thành Công!!!\");");  
	    		out.print("</script>");
	    		RequestDispatcher rd=request.getRequestDispatcher("DangNhap.jsp");    
				    rd.include(request,response); 
	    	   }
	    	else
	    	{
	    		RequestDispatcher rd=request.getRequestDispatcher("DangNhap.jsp");    
				    rd.include(request,response); 
	    	}
	    		   
	       }
	    catch (Exception e) {
	    	e.printStackTrace();
		}   
		doGet(request, response);
	}

}
