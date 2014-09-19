/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.garc.config;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

/**
 *
 * @author Ramkumar
 */
public class DBInfo {
    public List getDBList() throws IOException {
 
        String [] credential = new String [2];
        Properties prop = new Properties();
        String propFileName = "environment.properties";
 
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
        prop.load(inputStream);
        if (inputStream == null) {
            throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
        }
 
        List list=new LinkedList();
 
        // get the property value and print it out
        int i=1;
        do{
            credential[0] = prop.getProperty("db_name."+i);
            credential[1]  = prop.getProperty("db_alias."+i);    
            list.add(credential);
            i++;
        }while(prop.getProperty("db_name."+i)!=null);
        return list;
    }
    public static void main(String[] args) throws IOException{
        
    }
}
