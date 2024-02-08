
package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUsuario, String contrasenia, String rol){
    
        Usuario usu = new Usuario();
        usu.setNombre_usuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        
        controlPersis.crearUsuario(usu);
    }

    public List<Usuario> getUsuarios() {
        
        return controlPersis.getUsuarios();
    }

    public void borrarUsuario(int id) {
        controlPersis.borrarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
        
        return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }

    public void crearOdontolo(String dni, String nombre, String apellido, String telefono, String direccion,String especialidad) {

        Odontologo odo = new Odontologo();
        odo.setDni(dni);
        odo.setNombre(nombre);
        odo.setApellido(apellido);
        odo.setTelefono(telefono);
        odo.setDireccion(direccion);
        //odo.setFecha_nac(fecha_nac);
        odo.setEspecialidad(especialidad);
        
        controlPersis.crearOdontologo(odo);
        
    }

    public List<Odontologo> getOdontologos() {
        
        return controlPersis.getOdontologos();
    }

    public void borrarOdontologo(int id) {
        controlPersis.borrarOdontologo(id);
    }

    public Odontologo traerOdontologo(int id) {
        return controlPersis.traerOdontologo(id);
    }

    public void editarOdontologo(Odontologo odo) {
       controlPersis.editarOdontologo(odo);
    }

    public void crearPaciente(String dni, String nombre, String apellido, String telefono, String direccion, String tipoSangre) {
        
        Paciente pac = new Paciente();
        pac.setDni(dni);
        pac.setNombre(nombre);
        pac.setApellido(apellido);
        pac.setTelefono(telefono);
        pac.setDireccion(direccion);
        pac.setTipoSangre(tipoSangre);
        
        controlPersis.crearPaciente(pac);
    }

    public List<Paciente> getPacientes() {
        
        return controlPersis.getPacientes();
    }

    public void borrarPaciente(int id) {
        controlPersis.borrarPaciente(id);
    }

    public Paciente traerPaciente(int id) {
        
        return controlPersis.traerPaciente(id);
    }

    public void editarPaciente(Paciente pac) {
        
        controlPersis.editarPaciente(pac);
    }

    public void crearCita(String paciente, String odontologo, String razon, String fecha, String hora) {
        
        Cita cit = new Cita();
        cit.setPaciente(paciente);
        cit.setOdontologo(odontologo);
        cit.setRazon(razon);
        cit.setFecha(fecha);
        cit.setHora(hora);
        
        controlPersis.crearCita(cit);
    }
        public boolean comprobarIngreso(String usuario, String contrasenia) {
        boolean ingreso = false;
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.getUsuarios();
        
        for(Usuario usu : listaUsuarios){
           if(usu.getNombre_usuario().equals(usuario)){
            if(usu.getContrasenia().equals(contrasenia)){ 
              ingreso =true;
        }
         else {
              ingreso =false;
          }
        }
        }
        return ingreso;
     }

}
