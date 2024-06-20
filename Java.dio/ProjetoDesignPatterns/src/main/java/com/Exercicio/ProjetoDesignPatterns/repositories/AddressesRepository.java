package com.Exercicio.ProjetoDesignPatterns.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Exercicio.ProjetoDesignPatterns.entities.Addresses;

@Repository
public interface AddressesRepository extends CrudRepository<Addresses, String> {

}