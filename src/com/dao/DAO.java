package com.dao;
//
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;


public class DAO {
	public static Connection connect() throws SQLException {
		String url = "jdbc:mysql://localhost:3306/";  
        String dbName = "qldtnckh";  
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "123456";
		Connection conn=null;
		try {
			Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url + dbName, userName, password);  
			  System.out.print("connected");	
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static int DangKyDeTai(String hoten, String mssv, String khoa, String tendetai, String linhvuc, String thoigianbatdau, String thoigianketthuc, String kinhphi, String ghichu) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("insert into dangkydetai(hoten, mssv, khoa, tendetai, linhvuc, thoigianbatdau, thoigianketthuc, kinhphi, ghichu, TrangThai) values (?,?,?,?,?,?,?,?,?,'CHO DUYET')");
	     pst.setString(1, hoten);  
	     pst.setString(2, mssv);
	     pst.setString(3, khoa);  
	     pst.setString(4, tendetai);
	     pst.setString(5, linhvuc);
	     pst.setString(6, thoigianbatdau);
	     pst.setString(7, thoigianketthuc);
	     pst.setString(8, kinhphi);
	     pst.setString(9, ghichu);
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int DangKyTaiKhoan(String tentaikhoan, String matkhau, String email) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("insert into taikhoan(tentaikhoan, matkhau, email, Nhom) values (?,?,?,1)");
	     pst.setString(1, tentaikhoan);  
	     pst.setString(2, matkhau);
	     pst.setString(3, email);  
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int NopBaoCao(String linknopbai, String madetai) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set linknopbai=? where madetai=?");
	     pst.setString(1, linknopbai);  
	     pst.setString(2, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	
	public static int DuyetDeTai(String TrangThai, String madetai) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set TrangThai=? where madetai=?");
	     pst.setString(1, TrangThai);  
	     pst.setString(2, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int PhanQuyenTaiKhoan(String Nhom, String tentaikhoan) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update taikhoan set Nhom=? where tentaikhoan=?");
	     pst.setString(1, Nhom);  
	     pst.setString(2, tentaikhoan); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int PhanCongPhanBien(String gvphanbien, String phongphanbien, String thoigianphanbien, String madetai) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set gvphanbien=?, phongphanbien=?, thoigianphanbien=? where madetai=?");
	     pst.setString(1, gvphanbien);
	     pst.setString(2, phongphanbien);  
	     pst.setString(3, thoigianphanbien); 
	     pst.setString(4, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int XoaDeTai(String madetai) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("delete from dangkydetai where madetai=?");
	     pst.setString(1, madetai);  
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int XoaTaiKhoan(String tentaikhoan) throws SQLException {
	     Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("delete from taikhoan where tentaikhoan=?");
	     pst.setString(1, tentaikhoan);  
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int Comment(String Comment, String madetai) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set Comment=? where madetai=?");
	     pst.setString(1, Comment);  
	     pst.setString(2, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int ChamDiem(String diem, String madetai) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set diem=? where madetai=?");
	     pst.setString(1, diem);  
	     pst.setString(2, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int GiaHanHuy(String giahanhuy, String madetai) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set giahanhuy=? where madetai=?");
	     pst.setString(1, giahanhuy);
	     pst.setString(2, madetai); 
	     int i= pst.executeUpdate();
	     return i;
	}
	
	public static int ThongTinSinhVien(String hoten, String mssv, String khoa, String sdt, String socmnd, String nienkhoa, String gioitinh, String diachi, String ngaysinh, String ghichu) throws SQLException {
		Connection conn=connect(); 
	     PreparedStatement pst = null;  	     
	     pst = conn.prepareStatement("update dangkydetai set hoten=?, mssv=?, khoa=?, sdt=?, socmnd=?"
	     		+ "nienkhoa=?, gioitinh=?, diachi=? ngaysinh=?, ghichu=? where madetai=?");
	     pst.setString(1, hoten);
	     pst.setString(2, mssv);  
	     pst.setString(3, khoa); 
	     pst.setString(4, sdt);
	     pst.setString(5, socmnd);
	     pst.setString(6, nienkhoa);  
	     pst.setString(7, gioitinh); 
	     pst.setString(8, diachi);
	     pst.setString(9, ngaysinh);
	     pst.setString(10, ghichu);
	     int i= pst.executeUpdate();
	     return i;
	}
}
