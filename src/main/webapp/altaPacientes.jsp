<%-- 
    Document   : altaPacientes
    Created on : 21 nov. 2023, 16:01:35
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Alta Paciente</h1>
<p>Esto es una prueba</p>

<form class="user" action="SvPacientes" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="dni" name="dni"
                   placeholder="DNI">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                   placeholder="Nombre">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                   placeholder="Apellido">
        </div>
        
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                   placeholder="Telefono">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                   placeholder="Direccion">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="tiposangre" name="tiposangre"
                   placeholder="Tipo de Sangre">

        
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit"> 
        Crear Paciente
    </button>
    
    <hr>
    
    <a href="index.html" class="btn btn-google btn-user btn-block">
        <i class="fab fa-google fa-fw"></i> Register with Google
    </a>
    <a href="index.html" class="btn btn-facebook btn-user btn-block">
        <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
    </a>
</form>

<%@include file="Components/bodyFinal.jsp" %>
