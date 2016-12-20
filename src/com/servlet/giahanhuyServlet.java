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
 * Servlet implementation class giahanhuybienServlet
 */
@WebServlet("/giahanhuyServlet")
public class giahanhuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giahanhuyServlet() {
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
  
	    String giahanhuy = request.getParameter("txtgiahanhuy");
	    String madetai = request.getParameter("txtmadetai");  
	   
	    try{
	    	if(DAO.GiaHanHuy(giahanhuy, madetai)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Nộp Đơn Gia hạn-Hủy Thành Công!!!\");");  
	    		out.print("</script>");
	    		RequestDispatcher rd=request.getRequestDispatcher("GiaHan_HuyDeTai.jsp");    
				    rd.include(request,response); 
	    	   }
	    	else
	    	{
	    		RequestDispatcher rd=request.getRequestDispatcher("GiaHan_HuyDeTai.jsp");    
				    rd.include(request,response); 
	    	}
	    		   
	       }
	    catch (Exception e) {
	    	e.printStackTrace();
		}   
		doGet(request, response);
	}

}
