
package persistencia;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cita;
import logica.Odontologo;
import logica.Paciente;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    
    //HorarioJpaController horaJpa = new HorarioJpaController();
    OdontologoJpaController odontoJpa = new OdontologoJpaController();
    PacienteJpaController pacJpa = new PacienteJpaController();
//    PersonaJpaController persJpa = new PersonaJpaController();
//    ResponsableJpaController respJpa = new ResponsableJpaController();
//    SecretarioJpaController secreJpa = new SecretarioJpaController();
//    TurnoJpaController turnJpa = new TurnoJpaController();
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    CitaJpaController citJpa =new CitaJpaController();

    public void crearUsuario(Usuario usu) {
        usuJpa.create(usu);
    }

    public List<Usuario> getUsuarios() {
        
        return usuJpa.findUsuarioEntities();
    }

    public void borrarUsuario(int id) {
        try {
            usuJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id) {
        return usuJpa.findUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearOdontologo(Odontologo odo) {
        odontoJpa.create(odo);
    }

    public List<Odontologo> getOdontologos() {
        return odontoJpa.findOdontologoEntities();
    }

    public void borrarOdontologo(int id) {
        try {
            odontoJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Odontologo traerOdontologo(int id) {
        return odontoJpa.findOdontologo(id);
    }

    public void editarOdontologo(Odontologo odo) {
        try {
            odontoJpa.edit(odo);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearPaciente(Paciente pac) {
        pacJpa.create(pac);
    }

    public List<Paciente> getPacientes() {
        return pacJpa.findPacienteEntities();
    }

    public void borrarPaciente(int id) {
        try {
            pacJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Paciente traerPaciente(int id) {
        
        return pacJpa.findPaciente(id);
    }

    public void editarPaciente(Paciente pac) {
        try {
            pacJpa.edit(pac);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearCita(Cita cit) {        
        citJpa.create(cit);
    }

}
