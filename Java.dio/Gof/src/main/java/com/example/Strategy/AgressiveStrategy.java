package com.example.Strategy;

public class AgressiveStrategy implements Strategy{

    @Override
    public void move(){
        System.out.println("movendo-se normalmente");
    }
    
}
