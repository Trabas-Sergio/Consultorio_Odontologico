<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<h1>Alta Citas</h1>
<p>Esto es el apartado para dar de alta a los diferentes citas del Sistema</p>

<form class="user" action="SvCitas" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="paciente" name="paciente"
                   placeholder="Paciente">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="odontologo" name="odontologo"
                   placeholder="Odontologo">
        </div>  
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="razon" name="razon"
                   placeholder="Razón">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="fecha" name="fecha"
                   placeholder="Fecha">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="hora" name="hora"
                   placeholder="Hora">
        </div>
                
        <!-- Aqui va ir todo lo respecto a Horarios y Usuarios -->
        
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Cita 
    </button>
    
</form>

<%@include file="Components/bodyFinal.jsp" %>
