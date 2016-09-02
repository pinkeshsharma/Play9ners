/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.model;

import java.io.Serializable;

/**
 *
 * @author Pinkesh
 */
public class User implements Serializable {
    private String userId;
    private String name;
    private String email;
    private String from;
    private String till;
    private String code;
    

    public User() {

    }

    public User(String userId, String name, String email, String from, String till) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.from = from;
        this.till = till;
    }
    
    public User(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTill() {
        return till;
    }

    public void setTill(String till) {
        this.till = till;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
