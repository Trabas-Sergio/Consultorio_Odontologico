<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Edicion de Usuarios</h1>
<p>Esto es el apartado para modificar usuarios del Sistema</p>

<% Usuario usu = (Usuario)request.getSession().getAttribute("usuEditar");%>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu"
                   placeholder="Nombre Usuario" value="<%=usu.getNombre_usuario()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña" value="<%=usu.getContrasenia()%>">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol" value="<%=usu.getRol()%>">
        </div>
                
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Guardar Modificacion   
    </button>
    
</form>

<%@include file="Components/bodyFinal.jsp" %>
