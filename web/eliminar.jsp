<%-- 
    Document   : eliminar
    Created on : 10/10/2015, 06:45:01 PM
    Author     : YHOAN CUCAITA
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
            Integer id = Integer.parseInt(request.getParameter("id"));
            MiCatalogo miCatalogo = (MiCatalogo) session.getAttribute("miCarrito");
            for (Catalogo catalogo1 : miCatalogo.getMisProductos()) {
                if (catalogo1.getId().equals(id)) {
                    miCatalogo.removerProducto(catalogo1);
                    break;
                }
            }
            response.sendRedirect("mostrar.jsp");
        %>
    </body>
</html>
