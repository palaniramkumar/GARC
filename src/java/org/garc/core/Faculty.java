/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.garc.core;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.garc.config.DBObject;
import org.garc.oauth.UserInfo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Ramkumar
 */
public class Faculty {
    public JSONObject getClassIncharge(String semester, String section) throws IOException {
        String sql = sql = "SELECT s.staff_id,c.semester,c.section,s.staff_name,"
                + "s.qualification,s.title FROM classincharge c ,"
                + " staff s where c.semester = ? and c.section = ? and s.staff_id = c.staff_id ;";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(semester);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("name", rs.getString("staff_name"));
                    jsonElement.put("staff_id", rs.getString("staff_id"));
                    jsonElement.put("qualification", rs.getString("qualification"));
                    jsonElement.put("semester", rs.getString("semester"));
                    jsonElement.put("title", rs.getString("title"));
                    jsonElement.put("section", rs.getString("section"));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("responsecode", "200");
            } else {
                json.put("message", "Not Found");
                json.put("responsecode", "404");
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
    
}
