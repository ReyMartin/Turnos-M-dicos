
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class tipo_email {
    private int id;
    private String nombre;
    
    public tipo_email(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    tipo_email() {
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
