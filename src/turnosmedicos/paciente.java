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
public class paciente {
    private int id;
    private int persona_dni;
    private String obra_social;

    public paciente(int id, int persona_dni, String obra_social) {
        this.id = id;
        this.persona_dni = persona_dni;
        this.obra_social = obra_social;
    }

    paciente() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPersona_dni() {
        return persona_dni;
    }

    public void setPersona_dni(int persona_dni) {
        this.persona_dni = persona_dni;
    }

    public String getObra_social() {
        return obra_social;
    }

    public void setObra_social(String obra_social) {
        this.obra_social = obra_social;
    }
    
    
    
}
