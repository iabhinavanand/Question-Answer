package com.post.dao;

import com.post.bean.QuestionBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public boolean insertQuestion(QuestionBean q, int uid) {
        boolean f = false;
        try {
            PreparedStatement pstmt = con.prepareStatement("insert into questions(qheading,qcontent,code,code_lang,uid) values(?,?,?,?,?)");
            pstmt.setString(1, q.getHeading());
            pstmt.setString(2, q.getContent());
            pstmt.setString(3, q.getCode());
            pstmt.setString(4, q.getCodeLanguage());
            pstmt.setInt(5, uid);
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<QuestionBean> getAllQuestion() {
        List<QuestionBean> list = new ArrayList<>();

        try {
            PreparedStatement pstmt = con.prepareStatement("select * from questions order by qid desc");
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                QuestionBean q = new QuestionBean();
                q.setQid(set.getInt("qid"));
                q.setHeading(set.getString("qheading"));
                q.setContent(set.getString("qcontent"));
                q.setDatetime(set.getTimestamp("date"));
                q.setCode(set.getString("code"));
                q.setCodeLanguage(set.getString("code_lang"));
                q.setUid(set.getInt("uid"));

                list.add(q);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<QuestionBean> getAllQuestionsforIndex() {
        List<QuestionBean> list = new ArrayList<>();

        try {
            PreparedStatement pstmt = con.prepareStatement("select * from questions order by qid desc");
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                QuestionBean q = new QuestionBean();
                q.setQid(set.getInt("qid"));
                q.setHeading(set.getString("qheading"));
                q.setContent(set.getString("qcontent"));
                q.setDatetime(set.getTimestamp("date"));
                q.setCode(set.getString("code"));
                q.setCodeLanguage(set.getString("code_lang"));
                q.setUid(set.getInt("uid"));

                list.add(q);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<QuestionBean> getAllQuestionByUserId(int id) 
    {
        List<QuestionBean> list = new ArrayList<>();
        try {
            PreparedStatement pstmt = con.prepareStatement("select * from questions where uid=? order by qid desc");
            pstmt.setInt(1, id);
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                QuestionBean q = new QuestionBean();
                q.setQid(set.getInt("qid"));
                q.setHeading(set.getString("qheading"));
                q.setContent(set.getString("qcontent"));
                q.setDatetime(set.getTimestamp("qdate"));
                q.setCode(set.getString("code"));
                q.setCodeLanguage(set.getString("code_lang"));
                q.setUid(set.getInt("uid"));

                list.add(q);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

}
