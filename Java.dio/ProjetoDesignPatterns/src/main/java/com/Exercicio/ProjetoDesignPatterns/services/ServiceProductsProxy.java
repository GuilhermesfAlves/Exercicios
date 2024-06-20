package com.Exercicio.ProjetoDesignPatterns.services;

import com.Exercicio.ProjetoDesignPatterns.entities.Products;
import com.Exercicio.ProjetoDesignPatterns.services.impl.ProductsServiceImpl;

public class ServiceProductsProxy {

    private final ProductsServiceImpl service = new ProductsServiceImpl();

    public Iterable<Products> findAll() {
        System.out.println("retornando todos produtos");
        return service.findAll();
    }

    public Products findById(Long id) {
        System.out.println("retornando do id: " + id);
        return service.findById(id);
    }

    public void insert(Products product){
        System.out.println("inserindo produto: " + product.getName());
        service.insert(product);
    }

    public void update(Long id, Products product) {
        System.out.println("atualiazando produto de id: " + id + "com produto: "+ product.getName());
        service.update(id, product);
    }

    public void delete(Long id) {
        System.out.println("deletando produto de id: "+ id);
        service.delete(id);
    }
}
