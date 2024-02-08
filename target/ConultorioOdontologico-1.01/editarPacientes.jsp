<%@page import="logica.Paciente"%>
<%@page import="logica.Odontologo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Edicion de Odontologos</h1>
<p>Esto es el apartado para modificar odontologos del Sistema</p>

<% Paciente pac = (Paciente)request.getSession().getAttribute("pacEditar");%>

<form class="user" action="SvEditPacientes" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="dni" name="dni"
                   placeholder="DNI" value="<%=pac.getDni()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                   placeholder="Nombre" value="<%=pac.getNombre()%>">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                   placeholder="Apellido" value="<%=pac.getApellido()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                   placeholder="Telefono" value="<%=pac.getTelefono()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                   placeholder="Direccion" value="<%=pac.getDireccion()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="tiposangre" name="tiposangre"
                   placeholder="Tipo Sangre" value="<%=pac.getTipoSangre()%>">
        </div>
                
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Guardar Modificacion   
    </button>
    
</form>