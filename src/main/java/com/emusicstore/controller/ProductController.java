package com.emusicstore.controller;

import com.emusicstore.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @RequestMapping("/productList")
    public String getProducts(Model model)
    {
        List<Product> products = productService.getProductList();
        model.addAttribute("product",products);

        return "productList";
    }
}
