package com.Exercicio.ProjetoDesignPatterns.controllers.ProductsRestController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Exercicio.ProjetoDesignPatterns.entities.Products;
import com.Exercicio.ProjetoDesignPatterns.services.ServiceProductsProxy;

/**
 * Esse {@link RestController} representa nossa <b>Facade</b>, pois abstrai toda
 * a complexidade de integrações (Banco de Dados H2 e API do ViaCEP) em uma
 * interface simples e coesa (API REST).
 *
 */
@RestController
@RequestMapping("api/v1/products")
public class ProductsRestController {

    @Autowired
    private ServiceProductsProxy productsServiceProxy;

    @GetMapping
    public ResponseEntity<Iterable<Products>> findAll() {
        return ResponseEntity.ok(productsServiceProxy.findAll());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Products> findById(@PathVariable Long id) {
        return ResponseEntity.ok(productsServiceProxy.findById(id));
    }

    @PostMapping
    public ResponseEntity<Products> insert(@RequestBody Products product) {
        productsServiceProxy.insert(product);
        return ResponseEntity.ok(product);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Products> update(@PathVariable Long id, @RequestBody Products product) {
        productsServiceProxy.update(id, product);
        return ResponseEntity.ok(product);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        productsServiceProxy.delete(id);
        return ResponseEntity.ok().build();
    }
}