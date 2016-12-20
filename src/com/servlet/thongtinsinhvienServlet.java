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
 * Servlet implementation class thongtinsinhvienServlet
 */
@WebServlet("/thongtinsinhvienServlet")
public class thongtinsinhvienServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongtinsinhvienServlet() {
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
  
	    String hoten = request.getParameter("txthoten");
	    String mssv = request.getParameter("txtmssv");
	    String khoa = request.getParameter("txtkhoa");
	    String sdt = request.getParameter("txtsdt");
	    String socmnd = request.getParameter("txtsocmnd");
	    String nienkhoa = request.getParameter("txtnienkhoa");
	    String gioitinh = request.getParameter("txtgioitinh");
	    String diachi = request.getParameter("txtdiachi");
	    String ngaysinh = request.getParameter("txtngaysinh");
	    String ghichu = request.getParameter("txtghichu");
	   
	    try{
	    	if(DAO.ThongTinSinhVien(hoten, mssv, khoa, sdt, socmnd, nienkhoa, gioitinh, diachi, ngaysinh, ghichu)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Cập nhật thành công!!!\");");  
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
