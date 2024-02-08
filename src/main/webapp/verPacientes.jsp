<%@page import="logica.Paciente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
    <p class="mb-4">A continuacion podra ver la lista completa de Pacientes</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Pacientes</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Tipo Sangre</th>
                            <th style="width:210px">Accion</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Tipo Sangre</th>
                            <th style="width:210px">Accion</th>
                        </tr>
                    </tfoot>
                    
                    <%
                        List<Paciente> listaPacientes = (List)request.getSession().getAttribute("listaPacientes");
                    %>
                    
                    <tbody>
                        
                        <%for(Paciente pac : listaPacientes){%>
                        
                        <tr>
                            <td id="id_pac<%=pac.getId()%>"><%=pac.getId()%> </td>
                            <td><%=pac.getDni()%> </td>
                            <td><%=pac.getNombre()%> </td>
                            <td><%=pac.getApellido()%> </td>                            
                            <td><%=pac.getTelefono()%> </td>                            
                            <td><%=pac.getDireccion()%> </td>                            
                            <td><%=pac.getTipoSangre()%> </td>                            
                            
                            <td style="display:flex;width:230px;">
                                <form name="eliminar" action="SvElimPacientes" method="POST">
                                <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color:red;margin-right:5px;">
                                    <i class="fas fa-trash-alt"></i>Eliminar
                                </button>
                                <input type="hidden" name="id" value="<%=pac.getId()%>"> <!<!-- esto es para mandar el codigo al servlet -->
                                </form>
                                <form name="editar" action="SvEditPacientes" method="GET">
                                <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left:5px;">
                                    <i class="fas fa-pencil-alt"></i>Editar
                                </button>
                                <input type="hidden" name="id" value="<%=pac.getId()%>"> <!<!-- esto es para mandar el codigo al servlet -->
                                </form>
                                
                            </td>
                        </tr>
                        
                        <%}%>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
 
<%@include file="Components/bodyFinal.jsp" %>

