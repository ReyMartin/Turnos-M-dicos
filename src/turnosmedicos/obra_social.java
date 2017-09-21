/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class obra_social {
    
    private int id;
    private String nombre;

    public obra_social(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    obra_social() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
