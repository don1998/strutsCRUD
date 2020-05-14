package com.crudDemo.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.RowSetDynaClass;

import com.crudDemo.app.model.User;
import com.crudDemo.app.db.MysqlConnectionProvider;

public class CrudDAO {

	private Connection conn;

	public CrudDAO() {
		conn = MysqlConnectionProvider.getConnection();
	}

	public int create(User user) {
		try {
			String sql = "INSERT INTO user(name,password,companyName,email,website,phoneNumber,mobileNumber,country,message)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? )";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getCompanyName());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getWebsite());
			ps.setString(6, user.getPhoneNumber());
			ps.setString(7, user.getMobileNumber());
			ps.setString(8, user.getCountry());
			ps.setString(9, user.getMessage());

			int i = ps.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		} /*
			 * finally { if (conn != null) try { conn.close(); } catch (SQLException e) {
			 * e.printStackTrace(); } }
			 */
		return 0;
	}

	public RowSetDynaClass read() {
		Statement stmt = null;
		ResultSet rs = null;
		RowSetDynaClass rowSet = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from user");
			rowSet = new RowSetDynaClass(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowSet;
	}

	public int update(User user) {
		try {
			String sql = "UPDATE user SET name=?,password=?,companyName=?,email=?,website=?,phoneNumber=?,mobileNumber=?"
					+ " WHERE id=?";

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getCompanyName());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getWebsite());
			ps.setString(6, user.getPhoneNumber());
			ps.setString(7, user.getMobileNumber());

			ps.setInt(8, user.getId());
			int i = ps.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int delete(int id) {
		int i = 0;
		try {
			String sql = "DELETE FROM user WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public List<User> findUsers(String name) {
		List<User> users = new ArrayList<User>();
		try {
			String sql = "SELECT * FROM user where name like '%" + name + "%'";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			User user = null;
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setCompanyName(rs.getString("companyName"));
				user.setEmail(rs.getString("email"));
				user.setWebsite(rs.getString("website"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
				user.setMobileNumber(rs.getString("mobileNumber"));

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public User findUsersById(int id) {
		User user = null;
		try {
			String sql = "SELECT * FROM user where id =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setCompanyName(rs.getString("companyName"));
				user.setEmail(rs.getString("email"));
				user.setWebsite(rs.getString("website"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
				user.setMobileNumber(rs.getString("mobileNumber"));
				user.setCountry(rs.getString("country"));
				user.setMessage(rs.getString("message"));

			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}// end of class
