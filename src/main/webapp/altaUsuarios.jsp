<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Alta Usuarios</h1>
<p>Esto es el apartado para dar de alta a los diferentes usuarios del Sistema</p>

<form class="user" action="SvUsuarios" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu"
                   placeholder="Nombre Usuario">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol">
        </div>
                
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Usuario 
    </button>
    
</form>

<%@include file="Components/bodyFinal.jsp" %>
