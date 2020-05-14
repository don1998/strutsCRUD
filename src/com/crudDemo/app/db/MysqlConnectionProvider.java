package com.crudDemo.app.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnectionProvider {
	private static Connection conn = null;
	
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
//	static final String DB_URL = "Mysql@us-cdbr-iron-east-04.cleardb.net:3306";
	static final String DB_URL = "jdbc:mysql://us-cdbr-iron-east-04.cleardb.net:3306/heroku_71acd0201a188db";
	// Database credentials
	static final String USER = "b103e74302a9bc";
	static final String PASS = "effe3da2";

    public static Connection getConnection() {
        if (conn != null)
            return conn;
        else {
            try {
            	// STEP 1: Register JDBC driver
    			Class.forName("com.mysql.jdbc.Driver");
    			// STEP 2: Open a connection
    			conn = DriverManager.getConnection(DB_URL, USER, PASS);
            } catch (ClassNotFoundException cnfe) {
                System.out.println(cnfe);
            } catch (SQLException sqe) {
                System.out.println(sqe);
            } 
            return conn;
        }

    }
}
