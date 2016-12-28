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
 * Servlet implementation class dangkydetaiServlet
 */
@WebServlet("/dangkydetaiServlet")
public class dangkydetaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkydetaiServlet() {
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
	    String hoten = request.getParameter("txtname");    
	    String mssv = request.getParameter("txtmssv");
	    String khoa = request.getParameter("txtkhoa");
	    String tendetai = request.getParameter("txttendetai");
	    String linhvuc = request.getParameter("txtlinhvuc");
	    String gvhuongdan = request.getParameter("txtgvhuongdan");
	    String thoigianbatdau = request.getParameter("txtthoigianbatdau");
	    String thoigianketthuc = request.getParameter("txtthoigianketthuc");
	    String kinhphi = request.getParameter("txtkinhphi");
	    String ghichu = request.getParameter("ghichu");
	    try{
	    	if(DAO.DangKyDeTai(hoten, mssv, khoa, tendetai, linhvuc, gvhuongdan, thoigianbatdau, thoigianketthuc, kinhphi, ghichu)>0){ 
	    		out.print("<script>");
	    		out.print("alert(\"Đăng Ký Thành Công!!!\");");  
	    		out.print("</script>");
	    		RequestDispatcher rd=request.getRequestDispatcher("HomeSinhVien.jsp");    
				    rd.include(request,response); 
	    	   }
	    	else
	    	{
	    		RequestDispatcher rd=request.getRequestDispatcher("HomeSinhVien.jsp");    
				    rd.include(request,response); 
	    	}
	    		   
	       }
	    catch (Exception e) {
	    	e.printStackTrace();
		}   
		doGet(request, response);
	}

}
