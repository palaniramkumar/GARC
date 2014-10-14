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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.garc.config.DBObject;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Ramkumar
 */
public class UserInfo {
    public final static  String FACULTY="staff";
    public final static  String STUDENT="student";
    public JSONObject getAuthToken(String username, String password) throws IOException {
        DBObject dbObj = new DBObject();
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(username);
        param.add(password);
        try {
            String sql = "select staff_id,qualification,designation,title,staff_name,user_name,user_type,DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r') last_login_at from staff where user_name = ? and pass=password(?)";

            ResultSet result = dbObj.getDbResultSet(sql, param);
            if (result.next()) {
                json.put("id", result.getString("staff_id"));
                json.put("name", result.getString("staff_name"));
                json.put("type", result.getString("user_type"));
                json.put("login_id", result.getString("user_name"));
                json.put("qualification", result.getString("qualification"));
                json.put("designation", result.getString("designation"));
                json.put("title", result.getString("title"));
                json.put("last_login_at", result.getString("last_login_at"));
                json.put("redirectURI", "/" + result.getString("user_type"));//${pageContext.request.contextPath}
                json.put("responsecode", "301");
                json.put("message", "Credentials Valid");
            } else {
                sql = "select student_name,username,semester,section,student_id, DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r') last_login_at,isattend from students where username= ? and pass=password(?)";
                result = dbObj.getDbResultSet(sql, param);
                if (result.next()) {
                    json.put("id", result.getString("student_id"));
                    json.put("name", result.getString("student_name"));
                    json.put("semester", result.getString("semester"));
                    json.put("section", result.getString("section"));
                    json.put("login_id", result.getString("username"));
                    json.put("type", "student");
                    json.put("block", result.getString("isattend"));
                    json.put("last_login_at", result.getString("last_login_at"));
                    json.put("redirectURI", "/student");
                    json.put("responsecode", "301");
                    json.put("message", "Credentials Valid");
                } else {
                    json.put("response_code", "401");
                    json.put("message", "Invalid username/password");
                }
            }
        } catch (Exception e) {
            json.put("response_code", "500");
            json.put("message", e.toString());
            e.printStackTrace();
        }
        try {
            dbObj.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return json;
    }

    public static JSONObject updateUserField(String usertype, String field, String value, String id) throws IOException {
        String conditionElement="staff_id";
        String tableName="staff";
        if(usertype.toLowerCase().contains(STUDENT)){
            conditionElement="student_id";
            tableName="students";
        }
        String sql = "update "+tableName +" set "+ field+" = ? where "+ conditionElement +" = ?";
        JSONObject json = new JSONObject();
        DBObject dbObj = new DBObject();
        try {
            List param = new ArrayList();
            param.add(value);
            param.add(id);
            int record = dbObj.executeUpdate(sql, param);            
            json.put("records",record);
            json.put("message",record+ " record updated");
            json.put("responsecode", "200");

        } catch (Exception e) {
            json.put("responsecode", "500");
            json.put("message", e.toString());
            e.printStackTrace();
        }

        try {
            dbObj.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return json;
    }

}
