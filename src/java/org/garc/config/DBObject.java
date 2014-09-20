/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.garc.config;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import org.garc.oauth.UserInfo;

/**
 *
 * @author Ramkumar
 */
public class DBObject {

    private static String dbUser;
    private static String dbPass;
    private static String dbName;
    private static String dbHost;
    private static String dbPort;
    private Connection connection;
    private Statement statement;
    private ResultSet rs;
    private PreparedStatement stmt;

    private void getCredential() throws IOException {

        Properties prop = new Properties();
        String propFileName = "environment.properties";

        InputStream inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
        prop.load(inputStream);
        if (inputStream == null) {
            throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
        }

        // get the property value 
        dbUser = prop.getProperty("db_username");
        dbPass = prop.getProperty("db_password");
        dbHost = prop.getProperty("db_hostname");
        dbPort = prop.getProperty("db_port");

    }
    
    public DBObject() throws IOException{
        List list=new DBInfo().getDBList();        
        dbName=((String[])list.get(list.size()-1))[0];
        getCredential() ;
    }
    
    public DBObject(String dbName) throws IOException{
        this.dbName = dbName;
        getCredential();
    }

    public void setdbName(String dbName) {
        this.dbName = dbName;
    }

    public Connection getDbConection() throws ClassNotFoundException, SQLException {
        final String CONNECTION_URL = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName;
        Class.forName("org.gjt.mm.mysql.Driver");
        this.connection = DriverManager.getConnection(CONNECTION_URL, dbUser, dbPass);
        return this.connection;
    }

    public Statement getDbStatement() throws ClassNotFoundException, SQLException {
        this.connection = getDbConection();
        this.statement = connection.createStatement();
        return this.statement;
    }

    public ResultSet getDbResultSet(String sql) throws ClassNotFoundException, SQLException {
        this.statement = getDbStatement();
        this.rs = statement.executeQuery(sql);
        return rs;
    }
    public ResultSet getDbResultSet(String sql,List param) throws ClassNotFoundException, SQLException {
        if (stmt!=null)stmt.close();
        stmt = getDbConection().prepareStatement(sql);
        
        for(int i=0;i<param.size();i++)
            stmt.setString(i+1, param.get(i).toString());
        System.out.println(stmt);
        this.rs = stmt.executeQuery();
        return rs;
    }
    
    public void close() throws SQLException{
        if (rs!=null)rs.close();
        if (statement!=null)statement.close();
        if (connection!=null)connection.close();
        if (stmt!=null)stmt.close();
    }
   

    public static void main(String[] args) throws Exception{
        //System.out.println(new DBAuth().getCredential());
       
       System.out.println(new UserInfo().getAuthToken("312213631003", "demo").toJSONString());
    }
}
