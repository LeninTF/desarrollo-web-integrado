/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USER
 */
public class guardaProducto {
    private final String archivo = "productos.txt";
    public void guardar(String nombre, double precio, int cantidad) {
        try (FileWriter fw = new FileWriter(archivo, true)) {
            fw.write(nombre + "," + precio + "," + cantidad + "\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<String> listar() {
        List<String> lista = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader(archivo))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                lista.add(linea);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public void eliminar(int index) {
        List<String> lista = listar();

        if (index >= 0 && index < lista.size()) {
            lista.remove(index);
        }

        try (FileWriter fw = new FileWriter(archivo)) {
            for (String linea : lista) {
                fw.write(linea + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
