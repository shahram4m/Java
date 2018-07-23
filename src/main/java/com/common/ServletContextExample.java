package com.common;

//import org.h2.Driver;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.logging.Level;

public class ServletContextExample implements ServletContextListener{
    ServletContext context;
    public void contextInitialized(ServletContextEvent contextEvent) {
        System.out.println("Context Created");
        context = contextEvent.getServletContext();
        // set variable to servlet context
        context.setAttribute("TEST", "TEST_VALUE");
    }

    public void contextDestroyed(ServletContextEvent contextEvent) {
        context = contextEvent.getServletContext();
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                //LOG.log(Level.INFO, String.format("deregistering jdbc driver: %s", driver));
            } catch (SQLException e) {
             //   LOG.log(Level.SEVERE, String.format("Error deregistering driver %s", driver), e);
            }

        }
        System.out.println("Context Destroyed");
    }
}