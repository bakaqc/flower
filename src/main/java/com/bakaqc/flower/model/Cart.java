package com.bakaqc.flower.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private int userID;
    private int productID;
    private int amount;

    public Cart() {
    }

    public Cart(int userID, int productID, int amount) {
        this.userID = userID;
        this.productID = productID;
        this.amount = amount;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Cart [ " + "User ID = " + userID + ", Product ID = " + productID + ", amount = " + amount + ']' + "\n";
    }

}
