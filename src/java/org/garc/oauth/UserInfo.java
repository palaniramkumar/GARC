/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.garc.oauth;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.garc.config.DBObject;
/**
 *
 * @author Ramkumar
 */
public class UserInfo {
     public void getAuthToken(String username, String password) throws ClassNotFoundException, SQLException, IOException {
        DBObject dbObj=new DBObject();
        PreparedStatement stmt = dbObj.getDbConection().prepareStatement("select staff_id,user_type,DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r')  from staff where user_name = ? and pass=password(?)");
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet result=stmt.executeQuery();
        if (result.next()) {
           System.out.println(result.getString(1));
        }
        else{
            stmt.close();
            stmt = dbObj.getDbConection().prepareStatement("select semester,section,student_id, DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r')  from students where username= ? and pass=password(?)");
            stmt.setString(1, username);
            stmt.setString(2, password);
            result=stmt.executeQuery();
            if(result.next()){
                System.out.println(result.getString(1));
            }
        }
    }
}
