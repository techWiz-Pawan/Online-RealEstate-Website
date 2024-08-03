package com.easy.project.model;

public class Message {
    private String name;
    private String email;
    private String mobile;
    private String message;

    // Constructor
    public Message(String name, String email, String mobile, String message) {
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.message = message;
    }

    // Getters and setters (you can generate these methods in your IDE)
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
