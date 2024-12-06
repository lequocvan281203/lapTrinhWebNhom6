package services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entities.Product;
import utils.JpaUtils;

public class ProductService {

    public List<Product> getAllProducts() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT p FROM Product p";
            TypedQuery<Product> query = em.createQuery(jpql, Product.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
}