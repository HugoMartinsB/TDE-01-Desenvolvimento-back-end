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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String cargo) {
        Cargo = cargo;
    }
}
