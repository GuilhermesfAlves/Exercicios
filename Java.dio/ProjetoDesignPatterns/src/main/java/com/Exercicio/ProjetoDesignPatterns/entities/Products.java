package com.Exercicio.ProjetoDesignPatterns.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "Products")
public class Products {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long idProduct;
    private String type;
    private float price;
    private String name;
    private String brand;
    private String ean;
    private String unity;
    @OneToMany(cascade={CascadeType.MERGE}, fetch = FetchType.LAZY)
    List<Distributors> distributors = new ArrayList<>();
    
    public Long getIdProduct() {
        return idProduct;
    }
    
    public void setIdProduct(Long idProduct) {
        this.idProduct = idProduct;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getBrand() {
        return brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }
    
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getEan() {
        return ean;
    }
    
    public void setEan(String ean) {
        this.ean = ean;
    }
    
    public String getUnity() {
        return unity;
    }

    public void setUnity(String unity) {
        this.unity = unity;
    }

    public List<Distributors> getDistributors() { 
        return distributors;
    }

    public void setDistributors(List<Distributors> distributors) {
        this.distributors = distributors;
    }
}
