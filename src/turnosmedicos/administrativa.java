
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class administrativa {
 
    
    private Integer legajo;
    private Integer fecha_alta;

    public administrativa(Integer legajo, Integer fecha_alta) {
        this.legajo = legajo;
        this.fecha_alta = fecha_alta;
    }

    administrativa() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer getLegajo() {
        return legajo;
    }

    public void setLegajo(Integer legajo) {
        this.legajo = legajo;
    }

    public Integer getFecha_alta() {
        return fecha_alta;
    }

    public void setFecha_alta(Integer fecha_alta) {
        this.fecha_alta = fecha_alta;
    }


} 

    

