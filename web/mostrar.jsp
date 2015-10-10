<%-- 
    Document   : mostrar
    Created on : 28/09/2015, 07:15:50 PM
    Author     : Administrador
--%>

<%@page import="co.com.uniminuto.Catalogo"%>
<%@page import="co.com.uniminuto.MiCatalogo"%>
<%@page import="co.com.uniminuto.MiConexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table >
                        <caption>Catálogo de bicicletas para Alquiler.</caption>
                        <tr>
                            <th>Id</th>  
                            <th>Imágen</th> 
                             <th>Descripción</th> 
                             <th>Precio</th>
                            <!--<th>requisitos</th>-->
                            <th>Alquilar</th>
        <%
                           
                           
                         
                           for(Catalogo catalogo : ((MiCatalogo)session.getAttribute("miCarrito")).getMisProductos()){
                               
                               out.println("<tr>");
                               out.println("<td>"+catalogo.getId()+"</td>");
                               out.println("<td><img src='img/"+catalogo.getImagen()+"'><img></td>");
                               out.println("<td>"+catalogo.getNombre()+"</td>");
                               out.println("<td>"+catalogo.getPrecio()+"</td>");
//                               
//                               out.println("<td><a href ='datos.jsp?id="+catalogo.getId()+"&nombre="+catalogo.getNombre()+"&precio="+catalogo.getPrecio()+"&imagen="+catalogo.getImagen()+"' class = 'btnAlquilar'>Alquiler</a></td>");
                               out.println("</tr>");
                           }
        %>
        </table>
    </body>
</html>
