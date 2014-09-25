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
public class Student {

    private String studentId;
    private String semester;
    private String section;

    public Student(String studentId, String semester, String section) {
        this.studentId = studentId;
        this.semester = semester;
        this.section = section;
    }

    public JSONObject getAttendanceSummary() throws IOException {
        String sql
                = "select a.subject_id,s.subject_name,"
                + "sum(if(at.subject_id=a.subject_id and at.ab_type='P',1,0)),"
                + "sum(if(at.subject_id=a.subject_id and at.ab_type='O',1,0)),"
                + "sum(if(at.subject_id=a.subject_id,1,0)) , "
                + "round((sum(if(at.subject_id=a.subject_id and at.ab_type='P',1,0))"
                + "+sum(if(at.subject_id=a.subject_id and at.ab_type='O',1,0)))/sum(if(at.subject_id=a.subject_id,1,0))*100,2) "
                + "from assign_staff a left join attendance at on at.subject_id=a.subject_id "
                + "and at.staff_id=a.staff_id and a.section=at.section and at.student_id= ? , "
                + "subject s where s.subject_id=a.subject_id and a.semester=? group by a.subject_id";
        JSONObject json = new JSONObject();

        List param = new ArrayList();
        param.add(studentId);
        param.add(semester);
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("subjectId", rs.getString("subject_id"));
                    jsonElement.put("subjectName", rs.getString("subject_name"));
                    jsonElement.put("attended", rs.getString(3));
                    jsonElement.put("onduty", rs.getString(4));
                    jsonElement.put("attendance_taken", rs.getString(5));
                    int percentage = rs.getInt(5)!=0 ?(rs.getInt(3)+rs.getInt(4))*100/rs.getInt(5):0 ;
                    jsonElement.put("attendance_percentage", percentage);

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

    public JSONObject getMarks(String subjectId) throws IOException {
        String sql = "SELECT examname,examdate,weightage,max_marks,mark FROM assessment_master a left join marks m on a.examid=m.examid and m.student_id= ? where section = ? and subject_id= ?";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(studentId);
        param.add(section);
        param.add(subjectId);

        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("userId", studentId);
                    jsonElement.put("examname", rs.getString("examname"));
                    jsonElement.put("examdate", rs.getString("examdate"));
                    jsonElement.put("weightage", rs.getString("weightage"));
                    jsonElement.put("maxMarks", rs.getString("max_marks"));
                    jsonElement.put("mark", rs.getString("mark"));
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

    public JSONObject getDetailedAttendance(String month) throws IOException {
        String sql = "SELECT a.student_id,group_concat(s.subject_name order by hour) "
                + "subject_name,group_concat(st.staff_name order by hour) staff_name,"
                + "group_concat(a.hour order by hour) hour,group_concat(a.ab_type order by hour) ab_type, "
                + "group_concat(a.subject_id order by hour) subject_id, date_format(date,'%b%e %Y ,%W') `date` FROM attendance a,staff st,subject s "
                + "where student_id= ? and month(date)=? "
                + "and a.subject_id=s.subject_id and a.staff_id=st.staff_id group by date;";
        JSONObject json = new JSONObject();
        List param = new ArrayList();
        param.add(studentId);
        param.add(month);

        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql, param);
            JSONArray jsonArray = new JSONArray();
            int i = 0;
            if (rs.next()) {
                do {
                    JSONObject jsonElement = new JSONObject();
                    jsonElement.put("userId", rs.getString("student_id"));
                    jsonElement.put("date", rs.getString("date"));
                    String[] hours = rs.getString("hour").split(",");
                    String[] subject_names = rs.getString("subject_name").split(",");
                    String[] staff_names = rs.getString("staff_name").split(",");
                    String[] ab_types = rs.getString("ab_type").split(",");
                    String[] subject_ids= rs.getString("subject_id").split(",");
                    int j = 0;
                    JSONArray jsonNestedArray = new JSONArray();
                    while (j < hours.length) {
                        JSONObject jsonNestedElement = new JSONObject();
                        jsonNestedElement.put("subject_name", subject_names[j]);
                        jsonNestedElement.put("staff_name", staff_names[j]);
                        jsonNestedElement.put("hour", hours[j]);
                        jsonNestedElement.put("ab_type", ab_types[j]); //need to implement leave (L) details
                        jsonNestedElement.put("subject_id", subject_ids[j]);
                        jsonNestedArray.add(jsonNestedElement);
                        j++;
                    }
                    jsonElement.put("daylist", jsonNestedArray);
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

    private void getMessage() {

    }

    private void getMessage(int id) {

    }

    private void getSubjectList() {

    }
    public void close(){
        
    }
    public static void main(String[] args) throws IOException {
        System.out.println(new Student("312213631003", "3", "1").getAttendanceSummary().toJSONString());
    }
}
