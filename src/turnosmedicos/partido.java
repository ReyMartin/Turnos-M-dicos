
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class partido {
    
    private String nombre;
    private String provincia;

    public partido(String nombre, String provincia) {
        this.nombre = nombre;
        this.provincia = provincia;
    }

    partido() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    
  
}
