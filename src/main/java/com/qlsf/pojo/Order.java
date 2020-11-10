package com.qlsf.pojo;


public class Order {

  private String orderId;
  private String uid;
  private String username;
  private String sex;
  private String phone;
  private String airId;
  private java.sql.Timestamp originTime;
  private java.sql.Timestamp destinationTime;
  private double price;
  private String state;
  private String origin;
  private String destination;


  public String getOrderId() {
    return orderId;
  }

  public void setOrderId(String orderId) {
    this.orderId = orderId;
  }


  public String getUid() {
    return uid;
  }

  public void setUid(String uid) {
    this.uid = uid;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
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


  public String getAirId() {
    return airId;
  }

  public void setAirId(String airId) {
    this.airId = airId;
  }


  public java.sql.Timestamp getOriginTime() {
    return originTime;
  }

  public void setOriginTime(java.sql.Timestamp originTime) {
    this.originTime = originTime;
  }


  public java.sql.Timestamp getDestinationTime() {
    return destinationTime;
  }

  public void setDestinationTime(java.sql.Timestamp destinationTime) {
    this.destinationTime = destinationTime;
  }


  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }


  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }


  public String getOrigin() {
    return origin;
  }

  public void setOrigin(String origin) {
    this.origin = origin;
  }


  public String getDestination() {
    return destination;
  }

  public void setDestination(String destination) {
    this.destination = destination;
  }

}
