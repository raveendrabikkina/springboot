package com.ravi.springbootdemo.entity;

public class Address {

    private String addressId;
    private String unit;
    private String street;
    private String suburb;
    private String postCode;
    private String State;
    private String country;

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getState() {
        return State;
    }

    public void setState(String state) {
        State = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId='" + addressId + '\'' +
                ", unit='" + unit + '\'' +
                ", street='" + street + '\'' +
                ", suburb='" + suburb + '\'' +
                ", postCode='" + postCode + '\'' +
                ", State='" + State + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
