
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class pais {
     private String nombre;
    private partido partido;

    public pais(String nombre, partido partido) {
        this.nombre = nombre;
        this.partido = partido;
    }

    pais() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public partido getPartido() {
        return partido;
    }

    public void setPartido(partido partido) {
        this.partido = partido;
    }

  
}
