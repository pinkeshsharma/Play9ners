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

/**
 *
 * @author Pinkesh
 */
public class DAO {

    ConnectionPool pool;
    Connection connection;

    public DAO() {
        pool = ConnectionPool.getInstance();

    }

    public User getUser(String email, String password) {
        PreparedStatement ps = null;
        connection = pool.getConnection();
        User user = null;
        String query = "SELECT USERID, NAME, EMAIL, VALID_FROM, VALID_TILL from 9NERS where EMAIL=? and password=?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                user = new User(resultSet.getString("USERID"), resultSet.getString("NAME"),resultSet.getString("EMAIL"), resultSet.getString("VALID_FROM"), resultSet.getString("VALID_TILL")); 
            } else {
                return user;
            }
        } catch (Exception e) {
            System.out.println(e);
            return null;
        } finally {
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
