package com.demo.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.demo.usermanagement.bean.User;
import com.demo.usermanagement.bean.Validation;

public class ValidationDao {
	
	static Logger logger = Logger.getLogger(ValidationDao.class);
	private String jdbcURL = "jdbc:mysql://localhost:3306/userdb?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";

	private static final String SELECT_USER_BY_ID = "select * from auth where username = ?";

	public ValidationDao() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public Validation validateUser(Validation validation) throws SQLException {
		// try-with-resource statement will auto close the connection.
		logger.info(validation.getUsername());
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
			preparedStatement.setString(1, validation.getUsername());
			logger.info(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			logger.info(rs);
			while (rs.next()) {
				String password = rs.getString("password");
				String username = rs.getString("username");

				logger.info(password);
                validation = new Validation(username,password);
			}
			
			
		} catch (SQLException e) {
		}
		return validation;
	}
}
