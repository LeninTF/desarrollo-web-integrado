/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author USER
 */
public class Calculadora {

    private double sueldoDiario;
    private int diasTrabajados;
    private double sueldoTotal;

    public Calculadora(double sueldoDiario, int diasTrabajados) {
        this.sueldoDiario = sueldoDiario;
        this.diasTrabajados = diasTrabajados;
    }

    public void calcularSueldo() {
        sueldoTotal = sueldoDiario * diasTrabajados;
    }

    public double getSueldoTotal() {
        return sueldoTotal;
    }
}
