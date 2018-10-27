package com.login.dao;
import com.login.bean.UserLoginBean;
import com.login.util.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao 
{
    
    Connection con;
    
    //Constructor for UserDao Class
    public LoginDao(Connection con) 
    {
        this.con = con;
    }
    
    //Insert User Method Logic
    public boolean insertUser(UserLoginBean user) 
    {
        boolean f = false;

        try 
        {
            PreparedStatement pstmt = con.prepareStatement("insert into users(firstname,surname,email,password,mobilephonenumber,month,day,year,gender) values(?,?,?,?,?,?,?,?,?)");
            pstmt.setString(1, user.getUfirstname());
            pstmt.setString(2, user.getUsurname());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPassword());
            pstmt.setString(5, user.getUmobilephonenumber());
            pstmt.setString(6, user.getUbirthmonth());
            pstmt.setString(7, user.getUbirthday());
            pstmt.setString(8, user.getUbirthyear());
            pstmt.setString(9, user.getUgender());
            pstmt.executeUpdate();
            f = true;
        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }

        return f;

    }

        //Getting User By Email and Password at time of Login
    public UserLoginBean getUserByEmailAndPassword(String email, String password) 
    {

        UserLoginBean user = null;

        try 
        {

            PreparedStatement pstmt = con.prepareStatement("select * from users where email=? and password=?");

            pstmt.setString(1, email);

            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) 
            {
                user = new UserLoginBean();

                user.setUid(set.getInt("id"));

                user.setUfirstname(set.getString("firstname"));

                user.setUsurname(set.getString("surname"));
                
                user.setEmail(set.getString("email"));

                user.setPassword(set.getString("password"));
                
                user.setUmobilephonenumber(set.getString("mobilephonenumber"));
                
                user.setUbirthmonth(set.getString("month"));
                  
                user.setUbirthday(set.getString("day"));
                
                user.setUbirthyear(set.getString("year"));
                
                user.setUgender(set.getString("gender"));
            }

        }
        catch (Exception e) 
        {

            e.printStackTrace();

        }
        return user;

    }

public boolean updateUserDetails(UserLoginBean user) 
{
        boolean f = false;
        try 
        {
            PreparedStatement pstmt = con.prepareStatement("update users set firstname=?, surname=?, email=?, password=?, mobilephonenumber=?, month=?, day=?, year=?, gender=?, profilepic=? where id=?");
            System.err.println(user.getEmail());
            pstmt.setString(1, user.getUfirstname());
            pstmt.setString(2, user.getUsurname());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPassword());
            pstmt.setString(5, user.getUmobilephonenumber());
            pstmt.setString(6, user.getUbirthmonth());
            pstmt.setString(7, user.getUbirthday());
            pstmt.setString(8, user.getUbirthyear());
            pstmt.setString(9, user.getUgender());
            pstmt.setString(10, user.getUprofilepic());
            pstmt.setInt(11, user.getUid());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) 
        {
            e.printStackTrace();
        }

        return f;
    }

    public UserLoginBean getUserById(int id) 
    {
        UserLoginBean user = null;
        try 
        {

            PreparedStatement pstmt = con.prepareStatement("select * from users where id=?");
            pstmt.setInt(1, id);
            ResultSet set = pstmt.executeQuery();
            if (set.next()) 
            {
             
                user = new UserLoginBean();
                user.setUid(set.getInt("id"));
                user.setUfirstname(set.getString("firstname"));
                user.setUsurname(set.getString("surname"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setUmobilephonenumber(set.getString("mobilephonenumber"));
                user.setUbirthmonth(set.getString("month"));
                user.setUbirthday(set.getString("day"));
                user.setUbirthyear(set.getString("year"));
                user.setUgender(set.getString("gender"));
                user.setUprofilepic(set.getString("profilepic"));

            }

        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }

        return user;
    }

/*
    public static String authenticateUser(UserLoginBean loginbean)
    {
        String username=loginbean.getUserName();
        String password=loginbean.getPassWord();
        
        
        
        Statement stmt;
        ResultSet rs;
    
        
        String UserNameDB="";
        String PassWordDB="";
        String query="select email, password from project.table1";
        
        try
        {
            con=ConnectionProvider.getConnection();
            stmt=con.createStatement();
            rs=stmt.executeQuery(query);
    
            while(rs.next())
            {
                UserNameDB=rs.getString("email");
                PassWordDB=rs.getString("password");
                
                if(username.equalsIgnoreCase(UserNameDB) && password.equalsIgnoreCase(PassWordDB))
                {
                  return "User Verified!";
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error");
            e.printStackTrace();
        }
        return "Invalid User Credentials";
        }
               
    */
}