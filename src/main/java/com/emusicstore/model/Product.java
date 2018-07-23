package com.emusicstore.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;


@Entity
public class Product implements Serializable {


    private static final long serialVersionUID = -5943479883949181536L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO  )
    private String productId;

    //@NotEmpty(message = "the product must not b empty")
    private String productName;
    private String productCategory;
    private String productDescription;

    //@Min(value = 0, message= "this is must not be zero")
    private double productPrice;
    private String productCondition;
    private String productStatus;
    private int unitInStock;
    private String productManufactorer;

    @Transient
    private MultipartFile productImage;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cardItemList;

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getProductManufactorer() {
        return productManufactorer;
    }

    public void setProductManufactorer(String productManufactorer) {
        this.productManufactorer = productManufactorer;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public List<CartItem> getCardItemList() {
        return cardItemList;
    }

    public void setCardItemList(List<CartItem> cardItemList) {
        this.cardItemList = cardItemList;
    }
}
