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
public class email {
    
    private int id;
    private int persona_id;
    private int tipo_email_id;
    private String email;

    public email(int id, int persona_id, int tipo_email_id, String email) {
        this.id = id;
        this.persona_id = persona_id;
        this.tipo_email_id = tipo_email_id;
        this.email = email;
    }

    email() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public int getTipo_email_id() {
        return tipo_email_id;
    }

    public void setTipo_email_id(int tipo_email_id) {
        this.tipo_email_id = tipo_email_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
