package com.emusicstore.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Customer implements Serializable {


    private static final long serialVersionUID = 5140900014886997914L;

    @Id
    @GeneratedValue
    private int customerId;

    @NotEmpty(message ="The customer name must not be null")
    private String customerName;

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public BillingAddress getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAddress billingAddress) {
        this.billingAddress = billingAddress;
    }

    public ShippingAddress getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAddress shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    @NotEmpty(message ="The customer email must not be null")
    private String customerEmail;

    private String customerPhone;

    @NotEmpty(message ="The customer user name must not be null")
    private String userName;

    @NotEmpty(message ="The customer password must not be null")
    private String password;

    private boolean enabled;

    @OneToOne
    @JoinColumn(name = "billAddressId")
    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name = "billAddressId")
    private ShippingAddress shippingAddress;

    @OneToOne
    @JoinColumn(name="cartId")
    @JsonIgnore
    private Cart cart;


}
