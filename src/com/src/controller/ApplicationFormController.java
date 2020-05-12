package com.src.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ApplicationFormController
 */
@WebServlet("/Register")
public class ApplicationFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		String panNo=request.getParameter("panNo");
		String accountType=request.getParameter("accountType");
		System.out.println(accountType);
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		HashMap<String,String> error=new HashMap<>();
		
		if(name==null|name.length()==0){
			
			error.put("name","name must not be empty");
				
		}
		else{
			
			request.setAttribute("name", name);
			
		}
		
		if(dob==null|dob.length()==0){
			
			error.put("dob","date of birth must not be empty");
			
		}
		else{
			
			request.setAttribute("dob", dob);
			
		}
		
		if(age==null|age.length()==0){
			
			error.put("age","age must not be empty");
					
		}
		else{
			
			request.setAttribute("age", age);
			
		}
		
		if(email==null|email.length()==0){
			
			error.put("email","email must not be empty");
					
		}
		else{
			
			request.setAttribute("email", email);
			
		}
		
		if(address==null|address.length()==0){
			
			error.put("address","address must not be empty");
					
		}
		else{
			
			request.setAttribute("address", address);
			
		}
		
		if(phoneNo==null|phoneNo.length()==0){
			
			error.put("phoneNo","phone no must not be empty");
					
		}
		else{
			
			request.setAttribute("phoneNo", phoneNo);
			
		}
		
		if(panNo==null|panNo.length()==0){
			
			error.put("panNo","pan no must not be empty");
					
		}
		else{
			
			request.setAttribute("panNo", panNo);
			
		}
		
		if(accountType==null){
	
			error.put("accountType","account type must not be empty");
	
		}else if(accountType.length()==0){
	
			error.put("accountType","account type must not be empty");
	
		}
		
		if(userName==null|userName.length()==0){
			
			error.put("userName","username must not be empty");
				
		}
		else{
			
			request.setAttribute("userName", userName);
			
		}

		if(password==null|password.length()==0){
			
			error.put("password","password must not be empty");
				
		}
		else{
			
			request.setAttribute("password", password);
			
		}
		
		if(!(error.isEmpty())){
			request.setAttribute("error", error);
			request.getRequestDispatcher("ApplicationForm.jsp").forward(request,response);
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
					request.getRequestDispatcher("ApplicationForm.jsp").forward(request,response);
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
