package com.cqut.po;

public class userTemp {

    String user_name;
    String password;
    int role;


    public userTemp(){};
    public userTemp(String user_name, String password, int role) {
        this.user_name = user_name;
        this.password = password;
        this.role = role;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
