package com.Exercicio.ProjetoDesignPatterns.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Exercicio.ProjetoDesignPatterns.entities.Products;

@Repository
public interface ProductsRepository extends CrudRepository<Products, Long> {

}
