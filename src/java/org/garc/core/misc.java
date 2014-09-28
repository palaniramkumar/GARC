/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.garc.core;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class misc {

    public JSONObject getHitCount(boolean isNew) throws IOException {
        String sql = "update misc set value = value + 1 where type like 'hit_count'";
        JSONObject json = new JSONObject();
        DBObject dbObj = new DBObject();
        try {
            if (isNew) {
                Statement st = dbObj.getDbStatement();
                st.executeUpdate(sql);
                st.close();
            }
            sql = "select value from misc where type like 'hit_count'";
            ResultSet rs = dbObj.getDbResultSet(sql);
            JSONArray jsonArray = new JSONArray();

            if (rs.next()) {
                json.put("count", rs.getString("value"));
            } else {
                json.put("message", "Not Found");
                json.put("responsecode", "404");
            }

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
