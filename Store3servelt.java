package store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;

import user.*;




@WebServlet(asyncSupported = true, urlPatterns = { "/store3" })
public class Store3servelt extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response); 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<h1>신청이 완료 되었습니다 </h1>");
		
		
		
	    String dosirak1 = request.getParameter("dosirak1");
	    String dosirak2 = request.getParameter("dosirak2");
	    String dosirak3 = request.getParameter("dosirak3");
	    String dosirak4 = request.getParameter("dosirak4");
	    String dosirak5 = request.getParameter("dosirak5");
	    String dosirak6 = request.getParameter("dosirak6");    
	    if(dosirak1==null)
	    {
	    	dosirak1="";
	    }
	    if(dosirak2==null)
	    {
	    	dosirak2="";
	    }
	    if(dosirak3==null)
	    {
	    	dosirak3="";
	    }
	    if(dosirak4==null)
	    {
	    	dosirak4="";
	    }
	    if(dosirak5==null)
	    {
	    	dosirak5="";
	    }
	    if(dosirak6==null)
	    {
	    	dosirak6="";
	    }
	    
	    String product = dosirak1+dosirak2+dosirak3+dosirak4+dosirak5+dosirak6;
	    
	    String count = request.getParameter("num");
	    
	    String a_egg =request.getParameter("a_egg");
	    String a_milk =request.getParameter("a_milk");
	    String a_peanut =request.getParameter("a_peanut");
	    String a_daedoo =request.getParameter("a_daedoo");
	    String a_mil =request.getParameter("a_mil");
	    String a_pig =request.getParameter("a_pig");
	    String a_tomato =request.getParameter("a_tomato");
	    String a_acid =request.getParameter("a_acid");
	    String a_walnut =request.getParameter("a_walnut");
	    String a_chicken =request.getParameter("a_chicken");
	    String a_ox =request.getParameter("a_ox");
	    
	    
	    if(a_egg==null)
	    {
	    	a_egg="";
	    }
	    if(a_milk==null)
	    {
	    	a_milk="";
	    }
	    if(a_peanut==null)
	    {
	    	a_peanut="";
	    }
	    if(a_daedoo==null)
	    {
	    	a_daedoo="";
	    }
	    if(a_mil==null)
	    {
	    	a_mil="";
	    }
	    if(a_pig==null)
	    {
	    	a_pig="";
	    }
	    if(a_tomato==null)
	    {
	    	a_tomato="";
	    }
	    if(a_acid==null)
	    {
	    	a_acid="";
	    }
	    if(a_walnut==null)
	    {
	    	a_walnut="";
	    }    
	    if(a_ox==null)
	    {
	    	a_ox="";
	    }
	    if(a_chicken==null)
	    {
	    	a_chicken="";
	    }
	    	
	    	
	    String alogy = a_egg + a_milk + a_peanut +a_daedoo + a_mil + a_pig + a_tomato + a_acid
	    		+a_walnut + a_chicken+ a_ox;
	    
	    
	    String start_day = request.getParameter("start_day");
	    String end_day = request.getParameter("end_day");
	    
	    String req = request.getParameter("req");
	    String tel = request.getParameter("tel");
	    String address = request.getParameter("address");
	    
	    String dbURL = "jdbc:mysql://localhost:3306/ANONYMOUSCHAT?serverTimezone=UTC&useSSL=false";
		String dbID = "root";
		String dbPassword = "root";
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
			if(conn==null)
			{
				
			}else {
				String sql = "INSERT INTO store3(product,count,alogy,req,start_day,end_day,tel,address) VALUES(?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				//pstmt.setString(1,id);
				pstmt.setString(1,product);
				pstmt.setString(2,count);
				pstmt.setString(3,alogy);
				pstmt.setString(4,req);
				pstmt.setString(5,start_day);
				pstmt.setString(6,end_day);
				pstmt.setString(7,tel);
				pstmt.setString(8,address);
				
				pstmt.executeUpdate();
				
				out.print("등록이 완료 되었습니다");
				out.print("<br>+<a href ='capstone.jsp'><h1>메인으로 돌아가기</h1></a>");
				pstmt.close();
				conn.close();
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
	}

}
