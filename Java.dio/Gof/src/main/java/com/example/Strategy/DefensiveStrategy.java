package com.example.Strategy;

public class DefensiveStrategy implements Strategy{

    @Override
    public void move(){
        System.out.println("movendo-se defensivamente");
    }
}
