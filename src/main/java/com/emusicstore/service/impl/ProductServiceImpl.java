package com.emusicstore.service.impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;



    public List<Product> getProductList() {

        return productDao.getAllProducts();
    }

    public Product getProductById(int productId) {

        return productDao.getProductById(productId);
    }


    public void addProduct(Product product) {

        productDao.addProduct(product);
    }


    public void editProduct(Product product) {

        productDao.editProduct(product);
    }


    public void deleteProduct(Product product) {

        productDao.deleteProduct(product);

    }
}
