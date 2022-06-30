package com.demo.usermanagement.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.demo.usermanagement.bean.Validation;
import com.demo.usermanagement.dao.UserDao;
import com.demo.usermanagement.dao.ValidationDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	static Logger logger = Logger.getLogger(Login.class);

private ValidationDao validationDao;
	
	public void init() {
		validationDao = new ValidationDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
		
		String username = request.getParameter("username");
		logger.info(username);
		String password  = request.getParameter("password");
		
		
        Validation val = new Validation(username,password);
     
			Validation dbpass = null;
			try {
				dbpass = validationDao.validateUser(val);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		request.setAttribute("dbpass", dbpass);
		logger.info(dbpass.getPassword());
		logger.info(password);
		
		if(dbpass.getPassword().equals(password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
					response.sendRedirect("list");
			
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	
	}

	

}
