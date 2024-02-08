<%@page import="logica.Odontologo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Components/header.jsp" %>
<%@include file="Components/bodyPrimeraParte.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Odontologos</h1>
    <p class="mb-4">A continuacion podra ver la lista completa de Odontologos</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Odontologos</h6>
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
                            <th>Especialidad</th>
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
                            <th>Especialidad</th>
                            <th style="width:210px">Accion</th>
                        </tr>
                    </tfoot>
                    
                    <%
                        List<Odontologo> listaOdontologo = (List)request.getSession().getAttribute("listaOdontologos");
                    %>
                    
                    <tbody>
                        
                        <%for(Odontologo odo : listaOdontologo){%>
                        
                        <tr>
                            <td id="id_odo<%=odo.getId()%>"><%=odo.getId()%> </td>
                            <td><%=odo.getDni()%> </td>
                            <td><%=odo.getNombre()%> </td>
                            <td><%=odo.getApellido()%> </td>
                            <td><%=odo.getTelefono()%> </td>
                            <td><%=odo.getDireccion()%> </td>
                            <td><%=odo.getEspecialidad()%> </td>
                            
                            <td style="display:flex;width:230px;">
                                <form name="eliminar" action="SvElimOdontologos" method="POST">
                                <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color:red;margin-right:5px;">
                                    <i class="fas fa-trash-alt"></i>Eliminar
                                </button>
                                    <input type="hidden" name="id" value="<%=odo.getId()%>"> <!<!-- esto es para mandar el codigo al servlet --> 
                                </form>
                                <form name="editar" action="SvEditOdontologos" method="GET">
                                <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left:5px;">
                                    <i class="fas fa-pencil-alt"></i>Editar
                                </button>
                                    <input type="hidden" name="id" value="<%=odo.getId()%>"> <!<!-- esto es para mandar el codigo al servlet -->
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
