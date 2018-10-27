package com.answer.dao;

import com.answer.bean.AnswerBean;
import com.post.bean.QuestionBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AnswerDao 
{
    Connection con;
    
    public AnswerDao(Connection con) 
    {
        this.con = con;
    }
    
    public boolean PostAnswer(AnswerBean a, QuestionBean q, int uid) 
    {
        boolean f = false;
    
        try 
        {
            PreparedStatement pstmt = con.prepareStatement("insert into answersrecords(ans_content,p_id,u_id) values(?,?,?)");
            pstmt.setString(1, a.getAanswercontent());
            pstmt.setInt(2, q.getQid());
            pstmt.setInt(3, uid);
            pstmt.executeUpdate();
            f = true;
        } 
        
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return f;
    }

       public List<AnswerBean> getAnswerByPostId(int p_id) 
    {
        List<AnswerBean> list = new ArrayList<>();
    
        try 
        {
            PreparedStatement pstmt = con.prepareStatement("select * from answersrecords where p_id=?");
            ResultSet set = pstmt.executeQuery();
            
            while (set.next())
            {
                AnswerBean a = new AnswerBean();
                
                a.setAanswercontent(set.getString("ans_content"));
                a.setAqid(set.getInt("p_id"));
                a.setAuid(set.getInt("u_id"));
                a.setAtimeofpost(set.getTimestamp("time_of_post"));
                list.add(a);

            }

        } 
        
        catch (Exception e) 
        {
            e.printStackTrace();
        }
     return list;
    }

}
