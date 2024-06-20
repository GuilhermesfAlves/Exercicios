package com.example.Facade;

import com.example.FacadeSubsystemCEP.CepService;
import com.example.FacadeSubsystemCRM.CrmService;

public class Facade {
    public void migrarCliente(String nome, String cep){

        String cidade = CepService.getInstance().recuperarCidade(cep);
        String estado = CepService.getInstance().recuperarEstado(cep);

        CrmService.gravarCliente(nome, cep, cidade, estado);
    }
}
