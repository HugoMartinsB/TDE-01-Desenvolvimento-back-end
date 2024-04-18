package model;

import java.math.BigDecimal;

public abstract class FuncionarioModel {
    private int id;

    private String name;

    private String Cargo;

    public FuncionarioModel(String nome, String cargo) {
        this.name = nome;
        this.Cargo = cargo;


    }
}
