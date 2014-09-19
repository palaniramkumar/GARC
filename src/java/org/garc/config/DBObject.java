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
    public Connection connection;
    public Statement statement;
    public ResultSet rs;
    PreparedStatement stmt;

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
        dbName="garcmba2014odd";
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
        System.out.println(CONNECTION_URL);
        System.out.println(dbUser);
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
    @Override
    public void finalize() throws SQLException{
        rs.close();
        statement.close();
        connection.close();
    }
   

    public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {
        //System.out.println(new DBAuth().getCredential());
       
       new UserInfo().getAuthToken("vmi", "demo");
    }
}
