package com.emusicstore.dao.impl;

//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import javax.jms.Session;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    SessionFactory sessionFactory;

    public void addProduct(Product product) {
        //Session session = sessionFactory.getCurrentSession();
        Session session;

        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e) {
            session = sessionFactory.openSession();
        }

        session.saveOrUpdate(product);
        session.flush();
    }

    public void editProduct(Product product) {
        //Session session = sessionFactory.getCurrentSession();
        Session session;

        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e) {
            session = sessionFactory.openSession();
        }

        session.saveOrUpdate(product);
        session.flush();
    }

    public Product getProductById(int id) {
        //Session session = sessionFactory.getCurrentSession();
        Session session;

        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e) {
            session = sessionFactory.openSession();
        }
        Product product = (Product) session.get(Product.class,id);
        return product;
    }

    public List<Product> getAllProducts()
    {
        //Session session = sessionFactory.getCurrentSession();
        Session session;

        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e) {
            session = sessionFactory.openSession();
        }
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();
        session.flush();

        return products;
    }

    public void deleteProduct(String id) {
        //Session session = sessionFactory.getCurrentSession();
        Session session;

        try {
            session = sessionFactory.getCurrentSession();
        } catch (HibernateException e) {
            session = sessionFactory.openSession();
        }
        session.delete(getProductById(id));
        session.flush();
    }
}
