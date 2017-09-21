
package turnosmedicos;

/**
 *
 * @author lorena
 */
public class persona_matricula {
    
    private int id;
    private int persona;
    private int matricula;
    private String partido;

    public persona_matricula(int id, int persona, int matricula, String partido) {
        this.id = id;
        this.persona = persona;
        this.matricula = matricula;
        this.partido = partido;
    }

    persona_matricula() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPersona() {
        return persona;
    }

    public void setPersona(int persona) {
        this.persona = persona;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }
    
    
}
