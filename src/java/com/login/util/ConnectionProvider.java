package com.login.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider 
{
    public static Connection con;
    
    public static Connection getConnection()
            {
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
              }
              catch(ClassNotFoundException | SQLException e)
              {
                  System.out.println("Error");
              }
              return con;
            }
            
    
}
