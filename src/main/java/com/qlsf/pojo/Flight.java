package com.qlsf.pojo;


import java.sql.Timestamp;

public class Flight {

  private long flightId;
  private String origin;
  private String destination;
  private java.sql.Timestamp originTime;
  private java.sql.Timestamp destinationTime;
  private double price;
  private String airId;

  public Flight() {
  }

  public Flight(long flightId, String origin, String destination, Timestamp originTime, Timestamp destinationTime, double price, String airId) {
        this.flightId = flightId;
        this.origin = origin;
        this.destination = destination;
        this.originTime = originTime;
        this.destinationTime = destinationTime;
        this.price = price;
        this.airId = airId;
  }


  public long getFlightId() {
    return flightId;
  }

  public void setFlightId(long flightId) {
    this.flightId = flightId;
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


  public String getAirId() {
    return airId;
  }

  public void setAirId(String airId) {
    this.airId = airId;
  }

    @Override
    public String toString() {
        return "Flight{" +
                "flightId=" + flightId +
                ", origin='" + origin + '\'' +
                ", destination='" + destination + '\'' +
                ", originTime=" + originTime +
                ", destinationTime=" + destinationTime +
                ", price=" + price +
                ", airId='" + airId + '\'' +
                '}';
    }
}
