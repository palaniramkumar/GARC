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
public class Subject {

    public static JSONObject getAllSubjectName() throws IOException {
        String sql = "select subject_id,subject_name,semester,elective,lab from subject";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("subject_id", rs.getString("subject_id"));
                    jsonElement.put("subject_name", rs.getString("subject_name"));
                    jsonElement.put("semester", rs.getString("semester"));
                    jsonElement.put("elective", rs.getString("elective").replace("null", ""));
                    jsonElement.put("lab", rs.getString("lab").replace("null", ""));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("title", "Subject Details");
                json.put("responsecode", "200");
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
    public JSONObject getSubjectName(String subjectId) throws IOException {
        String sql = "select subject_name,semester,elective,lab from subject where subject_id= ?'";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("subject_name", rs.getString("subject_name"));
                    jsonElement.put("semester", rs.getString("semester"));
                    jsonElement.put("elective", rs.getString("elective"));
                    jsonElement.put("lab", rs.getString("lab"));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("title", "Subject Details");
                json.put("responsecode", "200");
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

    public JSONObject getCourseOutline(String subjectId, String section) throws IOException {
        String sql = "select s.staff_id,s.staff_name,data,sem,sec from courseoutline c,staff s where c.staff_id = s.staff_id and subject_id= ? and sec= ? ";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("data", rs.getString("data"));
                    jsonElement.put("staff_id", rs.getString("staff_id"));
                    jsonElement.put("staff_name", rs.getString("staff_name"));
                    jsonElement.put("section", rs.getString("sec"));
                    jsonElement.put("semester", rs.getString("sem"));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("title", "Course Outline");
                json.put("count", i);
                json.put("responsecode", "200");
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

    public JSONObject getCourseCoverage(String subjectId, String section) throws IOException {
        String sql = "select s.staff_id,s.staff_name,data,sem,sec from courseoutline c,staff s where c.staff_id = s.staff_id and subject_id= ? and sec= ? ";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        param.add(section);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("data", rs.getString("data"));
                    jsonElement.put("staff_id", rs.getString("staff_id"));
                    jsonElement.put("staff_name", rs.getString("staff_name"));
                    jsonElement.put("section", rs.getString("sec"));
                    jsonElement.put("semester", rs.getString("sem"));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("title", "Course Coverage");
                json.put("responsecode", "200");
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

    public JSONObject getCourseProgress(String subjectId, String section) throws IOException {
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
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("category", rs.getString(1).equals("6") ? "Others" : rs.getString(1));
                    jsonElement.put("topic", rs.getString(2));
                    jsonElement.put("planned_hours", rs.getString(3));
                    jsonElement.put("actuals_hours", rs.getString(4));
                    jsonElement.put("finished_date", rs.getString(5));
                    jsonArray.add(jsonElement);
                    i++;

                } while (rs.next());
                json.put("items", jsonArray);
                json.put("title", "Course Progress");
                json.put("count", i);
                json.put("responsecode", "200");
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

    public JSONObject getFaculties(String subjectId) throws IOException {
        String sql = "select x.subject_id,x.subject_name, elective, group_concat(s.staff_id) staff_id, "
                + "group_concat(s.staff_name) staff_name, group_concat(a.section) section from assign_staff a , "
                + "staff s, subject x where a.staff_id = s.staff_id and x.subject_id = a.subject_id "
                + "and x.subject_id = ? group by subject_id;";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();

            if (rs.next()) {
                json.put("subject_id", rs.getString("subject_id"));
                json.put("subject_name", rs.getString("subject_name"));
                json.put("elective", rs.getString("elective"));
                String[] staffId = rs.getString("staff_id").split(",");
                String[] staffName = rs.getString("staff_name").split(",");
                String[] section = rs.getString("section").split(",");
                int i = 0;
                for (; i < staffId.length; i++) {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("staff_id", staffId[i]);
                    jsonElement.put("staff_name", staffName[i]);
                    jsonElement.put("section", section[i]);
                    jsonArray.add(jsonElement);
                }
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("title", "Assigened Faculties");
                json.put("responsecode", "200");
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

    public static JSONObject getResourceDownloadList(String subjectId) throws IOException {
        String sql = "select r.subject_id,s.subject_name, r.category,r.title,date_format(r.date,'%b %e,%Y') `date`,r.desc, "
                + "group_concat(r.filename) filename,group_concat(r.folder) folder , group_concat(r.staff_id) staff_id,group_concat(distinct st.staff_name) staff_name, r.semester,group_concat(r.section) section "
                + "from resource r,subject s,staff st where r.subject_id = ? and st.staff_id = r.staff_id and r.subject_id = s.subject_id group by r.category,r.title order by r.category";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(subjectId);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            if (rs.next()) {
                JSONArray jsonArray = new JSONArray();
                int i = 0;
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("subject_id", rs.getString("subject_id"));
                    jsonElement.put("subject_name", rs.getString("subject_name"));
                    jsonElement.put("staff_name", rs.getString("staff_name"));
                    jsonElement.put("semester", rs.getString("semester"));
                    jsonElement.put("title", rs.getString("title"));
                    jsonElement.put("category", rs.getString("category"));
                    jsonElement.put("date", rs.getString("date"));
                    jsonElement.put("desc", rs.getString("desc"));
                    String[] filename = rs.getString("filename").split(",");
                    String[] folder = rs.getString("folder").split(",");
                    String[] section = rs.getString("section").split(",");
                    String[] staff_id = rs.getString("staff_id").split(",");
                    int j = 0;
                    JSONArray jsonInnerArray = new JSONArray();
                    for (; j < filename.length; j++) {

                        JSONObject jsonInnerElement = new JSONObject();
                        jsonInnerElement.put("filename", filename[j]);
                        jsonInnerElement.put("folder", folder[j]);
                        jsonInnerElement.put("section", section[j]);
                        jsonInnerElement.put("staff_id", staff_id[j]);
                        jsonInnerArray.add(jsonInnerElement);
                    }
                    jsonElement.put("count", j);
                    jsonElement.put("items", jsonInnerArray);
                    jsonArray.add(jsonElement);
                    i++;
                } while (rs.next());
                json.put("items", jsonArray);
                json.put("count", i);
                json.put("title", "Download Resource");
                json.put("responsecode", "200");
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

    private void getQuestionBanks() {

    }

    private void getAttendanceLists() {

    }

    public static void main(String[] args) throws IOException {
        
    }

}
