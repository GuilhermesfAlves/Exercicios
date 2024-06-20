package com.example.FacadeSubsystemCEP;

public class CepService {
    private static final CepService instance = new CepService();

    private CepService(){
        super();
    }

    public static CepService getInstance(){
        return instance;
    }

    public String recuperarCidade(String cep){
        return "Curitiba";
    }

    public String recuperarEstado(String cep){
        return "Paraná";
    }
}

