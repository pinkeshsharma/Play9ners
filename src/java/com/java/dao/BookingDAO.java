/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dao;

import com.java.data.ConnectionPool;
import com.java.model.User;
import com.java.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pinkesh
 */
public class BookingDAO {
    
    ConnectionPool pool;
    Connection connection;

    public BookingDAO() {
        pool = ConnectionPool.getInstance();

    }

    public User book(int user_id, String game, String location, String court, String time_details, HttpSession sess) {
        PreparedStatement ps = null;
        connection = pool.getConnection();
        User user = null;
        String query = "insert into booking(user_id, game, location, court, time_details) values (?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setString(2, game);
            ps.setString(3, location);
            ps.setString(4, court);
            ps.setString(5, time_details);
            ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
            return null;
        } finally {
            
            sess.setAttribute("Game", "");
            sess.setAttribute("Location", "");
            sess.setAttribute("Court", ""); 
            sess.setAttribute("TimeDetails", "");
            
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
        return user;
    }
    
    public String getEmail(String param, String value) {
        PreparedStatement ps = null;
        connection = pool.getConnection();

        String query = "SELECT Email FROM User WHERE ? = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, param);
            ps.setString(2, value);
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("Email");
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
}
