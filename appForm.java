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
 * Servlet implementation class appForm
 */
@WebServlet("/appForm")
public class appForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public appForm() {
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
	
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phoneNo = request.getParameter("phoneNo");
		HashMap<String,String> error=new HashMap<>();
		if(name==null|name.length()==0){
			
			error.put("name","name must not be empty");
			
			
		}
		else{
			
			
			
		}
		if(dob==null|dob.length()==0){
			
			error.put("dob","date of birth must not be empty");
			
			
		}
		if(age==null|age.length()==0){
			
			error.put("age","age must not be empty");
			
			
		}
		if(email==null|email.length()==0){
			
			error.put("email","email must not be empty");
			
			
		}
		if(address==null|address.length()==0){
			
			error.put("address","address must not be empty");
			
			
		}
		if(phoneNo==null|phoneNo.length()==0){
			
			error.put("phoneNo","phone no must not be empty");
			
			
		}
		if(!(error.isEmpty())){
			request.setAttribute("error", error);
			request.getRequestDispatcher("applicationForm.jsp").forward(request,response);
		}
		else{
			
	
				
			try {
				Class.forName("org.h2.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:h2:~/test","sa","");
				Statement st=conn.createStatement();
				String query="insert into details values('"+name+"')";
				int rows = st.executeUpdate(query);
				if(rows>0){
					request.setAttribute("message","registration succesful");
					request.getRequestDispatcher("WEB-INF/success.jsp").forward(request,response);
				}
				else{
					error.put("message","registration failed");
					request.getRequestDispatcher("applicationForm.jsp").forward(request,response);
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
