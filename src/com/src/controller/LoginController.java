package com.src.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userName = request.getParameter("userName");
		String password = request.getParameter("pwd");
		
		HashMap<String,String> error=new HashMap<>();
		if(userName==null|userName.length()==0|password==null|password.length()==0){
			
			error.put("message","invalid user name or password");
			request.getRequestDispatcher("index.jsp#").forward(request,response);
		}
		else{
			
	
				
			try {
				Class.forName("org.h2.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:h2:~/test","sa","");
				Statement st=conn.createStatement();
				String query="Select * from login where userName='"+userName+"' and password='"+password+"'";
				ResultSet rs=st.executeQuery(query);
				if(rs.next()){
					error.put("message","login succesful");
					request.getRequestDispatcher("success.jsp").forward(request,response);
				}
				else{
					error.put("message","invalid user name or password");
					request.getRequestDispatcher("index.jsp").forward(request,response);
				}
			}
			 catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
