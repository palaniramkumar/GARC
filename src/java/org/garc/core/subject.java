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
import org.json.simple.JSONObject;

/**
 *
 * @author Ramkumar
 */
public class subject {

    private JSONObject getSubjectName(String subjectId) throws IOException {
        String sql = sql = "select subject_name,semester,elective,lab from subject where subject_id= ?'";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);

            if (rs.next()) {
                json.put("subject_name", rs.getString("subject_name"));
                json.put("semester", rs.getString("semester"));
                json.put("elective", rs.getString("elective"));
                json.put("lab", rs.getString("lab"));
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

    private JSONObject getCourseOutline(String subjectId, String section) throws IOException {
        String sql = "select s.staff_id,s.staff_name,data,sem,sec from courseoutline c,staff s where c.staff_id = s.staff_id and subject_id= ? and sec= ? ";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);

            if (rs.next()) {
                json.put("data", rs.getString("data"));
                json.put("staff_id", rs.getString("staff_id"));
                json.put("staff_name", rs.getString("staff_name"));
                json.put("section", rs.getString("sec"));
                json.put("semester", rs.getString("sem"));
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

    /*private void getExamList(String subjectId, String section) throws IOException {
     String sql=
     "select a.examid from marks m,assessment_master a "
     + "where a.examid=m.examid  and a.section= ? and a.subject_id= ?  "
     + "and m.student_id=? ";
     JSONObject json = new JSONObject();
     List param = new ArrayList();
     param.add(section);
     param.add(subjectId);

     DBObject dbObj = new DBObject();
     try {
     ResultSet rs = dbObj.getDbResultSet(sql, param);

     if (rs.next()) {
     json.put("data", rs.getString("data"));
     json.put("staff_id", rs.getString("staff_id"));
     json.put("staff_name", rs.getString("staff_name"));
     json.put("section", rs.getString("sec"));
     json.put("semeste", rs.getString("sem"));
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
     }*/
    private JSONObject getCourseCoverage(String subjectId, String section) throws IOException {
        String sql = "select s.staff_id,s.staff_name,data,sem,sec from courseoutline c,staff s where c.staff_id = s.staff_id and subject_id= ? and sec= ? ";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);

            if (rs.next()) {
                json.put("data", rs.getString("data"));
                json.put("staff_id", rs.getString("staff_id"));
                json.put("staff_name", rs.getString("staff_name"));
                json.put("section", rs.getString("sec"));
                json.put("semester", rs.getString("sem"));
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

    private JSONObject getCourseProgress(String subjectId, String section) throws IOException {
        String sql = "select c.category,c.topic,c.planned_hrs,count(distinct(concat(a.date,a.hour))),"
                + "DATE_FORMAT(max(date),'%d/%m/%Y') from course_planner c left join attendance a "
                + "on c.sno=a.topic where c.subject_id = ? and c.section = ? group by c.topic order by c.category,c.sno asc ";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);

            if (rs.next()) {
                json.put("category", rs.getString(1).equals("6")?"Others":rs.getString(1));
                json.put("topic", rs.getString(2));
                json.put("planned_hours", rs.getString(3));
                json.put("actuals_hours", rs.getString(4));
                json.put("finished_date", rs.getString(5));
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

    private void getAttendanceLists() {

    }

    private void getFaculties() {

    }

    private void getQuestionBanks() {

    }

}
