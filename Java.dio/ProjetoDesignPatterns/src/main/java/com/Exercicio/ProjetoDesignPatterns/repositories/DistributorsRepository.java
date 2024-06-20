package com.Exercicio.ProjetoDesignPatterns.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Exercicio.ProjetoDesignPatterns.entities.Distributors;

@Repository
public interface DistributorsRepository extends CrudRepository<Distributors, Long> {

}
