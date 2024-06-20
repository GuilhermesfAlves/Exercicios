package com.example.Singleton;


public class Singleton {
    private static final Singleton instance = new Singleton();

    private Singleton(){
        super();
    }

    public static Singleton getInstance(){
        return instance;
    }
}
