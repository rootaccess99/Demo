// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ibps.demo;

import com.ibps.demo.User;
import javax.persistence.Column;

privileged aspect User_Roo_DbManaged {
    
    @Column(name = "username", length = 45)
    private String User.username;
    
    @Column(name = "password", length = 45)
    private String User.password;
    
    @Column(name = "type", length = 45)
    private String User.type;
    
    @Column(name = "extra", length = 45)
    private String User.extra;
    
    public String User.getUsername() {
        return username;
    }
    
    public void User.setUsername(String username) {
        this.username = username;
    }
    
    public String User.getPassword() {
        return password;
    }
    
    public void User.setPassword(String password) {
        this.password = password;
    }
    
    public String User.getType() {
        return type;
    }
    
    public void User.setType(String type) {
        this.type = type;
    }
    
    public String User.getExtra() {
        return extra;
    }
    
    public void User.setExtra(String extra) {
        this.extra = extra;
    }
    
}