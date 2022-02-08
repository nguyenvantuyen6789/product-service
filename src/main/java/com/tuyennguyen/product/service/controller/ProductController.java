package com.tuyennguyen.product.service.controller;

import com.tuyennguyen.product.service.entity.Product;
import com.tuyennguyen.product.service.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/admin/api/v0")
public class ProductController {

    Logger log = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    private ProductService productService;

    @GetMapping("product")
    public List<Product> showList(@RequestParam(required = false) String keyword) {
        // log info
        log.debug("Go to: /admin/product");
        List<Product> products = productService.findAll();

        return products;
    }

    @PostMapping("/product")
    public List<Product> save(@RequestBody List<Product> listProduct) {
        // log info
        log.debug("Go to: /admin/product/save");

        productService.saveAll(listProduct);

        return listProduct;
    }

    @GetMapping("/product/{id}")
    public Product getById(@PathVariable int id) {
        // log info
        log.debug("Go to: /admin/product/" + id);

        try {
            Product obj = productService.findById(id);
            return obj;
        } catch (Exception e) {
            log.warn(e.getMessage());
            return null;
        }
    }

    @PutMapping("/product")
    public Product update(@RequestBody Product obj) throws IOException {
        // log info
        log.debug("Go to: /admin/product/update/" + obj.getProductId());

        productService.update(obj);

        return obj;
    }

    @DeleteMapping("/product/{id}")
    public Integer delete(@PathVariable int id) {
        // log info
        log.debug("Go to: /admin/product/delete/" + id);

        try {
            productService.deleteById(id);
        } catch (Exception e) {
            log.error(e.getMessage());
            return 0;
        }

        return id;
    }

}
