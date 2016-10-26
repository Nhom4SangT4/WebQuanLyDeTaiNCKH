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
 * Servlet implementation class duyetdetaiservlet
 */
@WebServlet("/duyetdetaiservlet")
public class duyetdetaiservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public duyetdetaiservlet() {
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
  
	    String TrangThai = request.getParameter("txtTrangThai");
	    String Ma = request.getParameter("txtMa");  
	   
	    try{
	    	if(DAO.DuyetDeTai(TrangThai, Ma)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Duyệt Thành Công!!!\");");  
	    		out.print("</script>");
	    		RequestDispatcher rd=request.getRequestDispatcher("DuyetDeTai.jsp");    
				    rd.include(request,response); 
	    	   }
	    	else
	    	{
	    		RequestDispatcher rd=request.getRequestDispatcher("DuyetDeTai.jsp");    
				    rd.include(request,response); 
	    	}
	    		   
	       }
	    catch (Exception e) {
	    	e.printStackTrace();
		}   
		doGet(request, response);
	}

}
