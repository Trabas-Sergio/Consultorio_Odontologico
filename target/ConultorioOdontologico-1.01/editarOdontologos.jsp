<%@page import="logica.Odontologo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Edicion de Odontologos</h1>
<p>Esto es el apartado para modificar odontologos del Sistema</p>

<% Odontologo odo = (Odontologo)request.getSession().getAttribute("odoEditar");%>

<form class="user" action="SvEditOdontologos" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="dni" name="dni"
                   placeholder="DNI" value="<%=odo.getDni()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                   placeholder="Nombre" value="<%=odo.getNombre()%>">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                   placeholder="Apellido" value="<%=odo.getApellido()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                   placeholder="Telefono" value="<%=odo.getTelefono()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                   placeholder="Direccion" value="<%=odo.getDireccion()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="especialidad" name="especialidad"
                   placeholder="Especialidad" value="<%=odo.getEspecialidad()%>">
        </div>
                
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Guardar Modificacion   
    </button>
    
</form>