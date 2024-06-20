package com.example;

import com.example.Facade.Facade;
import com.example.Singleton.Singleton;
import com.example.Strategy.AgressiveStrategy;
import com.example.Strategy.DefensiveStrategy;
import com.example.Strategy.PacificStrategy;
import com.example.Strategy.Robot;
import com.example.Strategy.Strategy;

public class Main {
    public static void main(String[] args) {

        //Singleton 
        System.out.println("Singleton");
        Singleton singleton = Singleton.getInstance();
        System.out.println(singleton);
        singleton = Singleton.getInstance();
        System.out.println(singleton);

        //Strategy
        System.out.println("Strategy");

        Strategy deffensive = new DefensiveStrategy();
        Strategy pacific = new PacificStrategy();
        Strategy agressive = new AgressiveStrategy();

        Robot robot = new Robot();
        robot.setStrategy(deffensive);
        robot.move();
        robot.setStrategy(pacific);
        robot.move();
        robot.setStrategy(agressive);
        robot.move();

        //Facade
        System.out.println("Facade");
        Facade facade = new Facade();
        facade.migrarCliente("Pessoa", "cep-aletorio");
    }
}