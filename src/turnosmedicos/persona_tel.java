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
public class persona_tel {
    
    private int id;
    private String persona;
    private int  tel;
    private int tipo_tel;

    public persona_tel(int id, String persona, int tel, int tipo_tel) {
        this.id = id;
        this.persona = persona;
        this.tel = tel;
        this.tipo_tel = tipo_tel;
    }

    persona_tel() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPersona() {
        return persona;
    }

    public void setPersona(String persona) {
        this.persona = persona;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public int getTipo_tel() {
        return tipo_tel;
    }

    public void setTipo_tel(int tipo_tel) {
        this.tipo_tel = tipo_tel;
    }
    
    
}
