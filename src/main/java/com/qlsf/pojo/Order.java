package com.qlsf.pojo;


import java.sql.Timestamp;

public class Order {

  private String orderId;
  private long userId;
  private String airId;
  private java.sql.Timestamp originTime;
  private java.sql.Timestamp destinationTime;
  private double price;
  private String state;

  public Order() {
  }

  public Order(String orderId, long userId, String airId, Timestamp originTime, Timestamp destinationTime, double price, String state) {
    this.orderId = orderId;
    this.userId = userId;
    this.airId = airId;
    this.originTime = originTime;
    this.destinationTime = destinationTime;
    this.price = price;
    this.state = state;
  }

  public String getOrderId() {
    return orderId;
  }

  public void setOrderId(String orderId) {
    this.orderId = orderId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
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

  @Override
  public String toString() {
    return "Order{" +
            "orderId='" + orderId + '\'' +
            ", userId=" + userId +
            ", airId='" + airId + '\'' +
            ", originTime=" + originTime +
            ", destinationTime=" + destinationTime +
            ", price=" + price +
            ", state='" + state + '\'' +
            '}';
  }
}
