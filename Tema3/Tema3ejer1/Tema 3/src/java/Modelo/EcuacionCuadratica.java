/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;


import java.io.FileWriter;
import java.io.IOException;
public class EcuacionCuadratica {
    private double a, b, c;
    private String resultado;
    public EcuacionCuadratica(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }
    public void resolver() {
        double discriminante = (b * b) - (4 * a * c);

        if (discriminante > 0) {
            double x1 = (-b + Math.sqrt(discriminante)) / (2 * a);
            double x2 = (-b - Math.sqrt(discriminante)) / (2 * a);
            resultado = "Raíces reales: x1 = " + x1 + ", x2 = " + x2;
        } else if (discriminante == 0) {
            double x = -b / (2 * a);
            resultado = "Raíz única: x = " + x;
        } else {
            double real = -b / (2 * a);
            double imag = Math.sqrt(-discriminante) / (2 * a);
            resultado = "Raíces complejas: x1 = " + real + " + " + imag + "i, x2 = "
                    + real + " - " + imag + "i";
        }
    }
    public String getResultado() {
        return resultado;
    }
    public void guardarEnArchivo() {
        try {
            FileWriter fw = new FileWriter("resultado.txt", true);
            fw.write(resultado + "\n");
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
