package com.tuyennguyen.product.service.service;

import com.tuyennguyen.product.service.entity.Product;
import com.tuyennguyen.product.service.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepo;

    public List<Product> findAll() {
        return productRepo.findAll();
    }

    public List<Product> saveAll(List<Product> listProduct) {
        return productRepo.saveAll(listProduct);
    }

    public Product findById(Integer id) {
        return productRepo.findById(id).get();
    }

    public Product update(Product obj) {
        return productRepo.save(obj);
    }

    public void deleteById(int id) {
        productRepo.deleteById(id);
    }

}
