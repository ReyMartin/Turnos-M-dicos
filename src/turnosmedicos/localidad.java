
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class localidad {
    private String nombre;
    private partido partido;

    public localidad(String nombre, partido partido) {
        this.nombre = nombre;
        this.partido = partido;
    }

    localidad() {
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
