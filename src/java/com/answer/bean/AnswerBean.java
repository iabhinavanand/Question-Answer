package com.answer.bean;

import java.sql.Timestamp;

public class AnswerBean 
{

    private int a_qid;
    private String a_answer_content;
    private java.sql.Timestamp a_time_of_post;
    private int a_uid;

    public AnswerBean() 
    {
    }

    public AnswerBean(String contentofanswer, int postId, int uid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int getAqid() 
    {
        return a_qid;
    }

    public void setAqid(int a_qid) 
    {
        this.a_qid = a_qid;
    }
    
    public String getAanswercontent()
    {
        return a_answer_content;
    }
    
    public void setAanswercontent(String a_answer_content)
    {
        this.a_answer_content = a_answer_content;
    }
    
    public int getAuid() 
    {
        return a_uid;
    }

    public void setAuid(int a_uid) 
    {
        this.a_uid = a_uid;
    }
    
     public Timestamp getAtimeofpost() 
    {
        return a_time_of_post;
    }

    public void setAtimeofpost(Timestamp a_time_of_post) 
    {
        this.a_time_of_post = a_time_of_post;
    }
    
    
    
}

            
