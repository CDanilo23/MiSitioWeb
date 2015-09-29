<%-- 
    Document   : datos
    Created on : 18/09/2015, 06:54:32 PM
    Author     : Administrador
--%>

<%@page import="co.com.uniminuto.MiCatalogo"%>
<%@page import="co.com.uniminuto.Catalogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%

            String id = (String) request.getParameter("id");
            String nombre = (String) request.getParameter("nombre");
            double precio = Double.valueOf(request.getParameter("precio"));
            String imagen = (String) request.getParameter("imagen");
            Catalogo catalogo = new Catalogo();
            catalogo.setId(Integer.parseInt(id));
            catalogo.setNombre(nombre);
            catalogo.setPrecio(precio);
            catalogo.setImagen(imagen);
            MiCatalogo miCatalogo = (MiCatalogo)session.getAttribute("miCarrito");
            if(miCatalogo==null){
                  miCatalogo = new MiCatalogo();
            }
            miCatalogo.agregarProducto(catalogo);
            session.setAttribute("miCarrito",miCatalogo);
            response.sendRedirect("index.jsp");
        %>
    </body>

</html>
