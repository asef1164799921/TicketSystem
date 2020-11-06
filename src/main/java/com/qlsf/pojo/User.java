package com.qlsf.pojo;


import java.util.Date;

public class User {

  private long userId;
  private String username;
  private String password;
  private String sex;
  private String phone;
  private String uid;
  private String email;
  private java.util.Date birth;


  public User() {
  }

  public User(long userId, String username, String password, String sex, String phone, String uid, String email, Date birth) {
    this.userId = userId;
    this.username = username;
    this.password = password;
    this.sex = sex;
    this.phone = phone;
    this.uid = uid;
    this.email = email;
    this.birth = birth;
  }

  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getUid() {
    return uid;
  }

  public void setUid(String uid) {
    this.uid = uid;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public java.util.Date getBirth() {
    return birth;
  }

  public void setBirth(java.util.Date birth) {
    this.birth = birth;
  }

  @Override
  public String toString() {
    return "User{" +
            "userId=" + userId +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", sex='" + sex + '\'' +
            ", phone='" + phone + '\'' +
            ", uid='" + uid + '\'' +
            ", email='" + email + '\'' +
            ", birth=" + birth +
            '}';
  }
}
