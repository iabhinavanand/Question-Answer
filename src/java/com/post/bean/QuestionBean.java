package com.post.bean;

import java.sql.Timestamp;


public class QuestionBean 
{

    private int qid;
    private String heading;
    private String content;
    private String code;
    private String codeLanguage;
    private java.sql.Timestamp datetime;
    private int uid;

    public QuestionBean() 
    {
    }

    public int getUid() 
    {
        return uid;
    }

    public void setUid(int uid) 
    {
        this.uid = uid;
    }
    
    
    public QuestionBean(String heading, String content, String code, String codeLanguage) 
    {
       
        this.heading = heading;
        this.content = content;
        this.code = code;
        this.codeLanguage = codeLanguage;
       
    }

    public int getQid() 
    {
        return qid;
    }

    public void setQid(int qid) 
    {
        this.qid = qid;
    }

    public String getHeading() 
    {
        return heading;
    }

    public void setHeading(String heading) 
    {
        this.heading = heading;
    }

    public String getContent() 
    {
        return content;
    }

    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getCode() 
    {
        return code;
    }

    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCodeLanguage() 
    {
        return codeLanguage;
    }

    public void setCodeLanguage(String codeLanguage) 
    {
        this.codeLanguage = codeLanguage;
    }

    public Timestamp getDatetime() 
    {
        return datetime;
    }

    public void setDatetime(Timestamp datetime) 
    {
        this.datetime = datetime;
    }
    
    
}
