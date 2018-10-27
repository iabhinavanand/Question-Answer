/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.unlike.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Abhinav
 */
public class UnlikeDao {

    Connection con;

    public UnlikeDao(Connection con) {
        this.con = con;
    }

    public boolean doUnlike(int pid, int uid) {
        boolean f = false;
        try {
            PreparedStatement pstmt = con.prepareStatement("delete from likes where pid=? and uid=?");
            pstmt.setInt(1, pid);
            pstmt.setInt(2, uid);
            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }


}
