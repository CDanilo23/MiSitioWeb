<%-- 
    Document   : index
    Created on : 18/09/2015, 07:14:01 PM
    Author     : Administrador
--%>

<%@page import="co.com.uniminuto.Catalogo"%>
<%@page import="co.com.uniminuto.MiCatalogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MiAlquiler</title><!--Titulo de mi web-->
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="css/miestilo.css">
        <script  type="text/javascript" src="js/modernizr.js"></script>
        <meta name="author" content="uniminuto">
    </head>
    <body>
        <header><!--Cabecera principal de mi sitio-->
            <div class="logo">
                <a href="#">
                    Alquiler de Bicicletas
                </a>
            </div><!--URL de Mi Logo-->
            <div id="menu-s">
                <nav class="menu"><!--Menu-->
                    <ul class="menu-nav">
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="#">Alquiler</a></li>
                        <li><a href="#">Reportes</a></li>
                        <li><a href="#">Mis Servicios</a></li>
                        <li><a href="#">Contactenos</a></li>
                        <li><a href="#">Mi Empresa</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!--Contenido del sitio-->
        <div class="head-image"><!--Slider-->
            <img src="img/logo.png">
        </div>
        <div class="fila">
            <section class="contenido">
                <article class="art">
                    <h1>Catálogo</h1>
                    <table >
                        <caption>Catálogo de bicicletas para Alquiler.</caption>
                        <tr>
                            <th>Id</th>  
                            <th>Imágen</th> 
                             <th>Descripción</th> 
                             <th>Precio</th>
                            <th>requisitos</th>
                            <th>Alquilar</th>
                        </tr>
                        <%
                           co.com.uniminuto.MiConexion miConexion = new MiConexion();
                           
                           MiCatalogo miCatalogo = miConexion.consultarDatos();
                           for(Catalogo catalogo : miCatalogo.getMisProductos()){
                               out.println("<tr>");
                               out.println("<td>"+catalogo.getId()+"</td>");
                               out.println("<td>"+catalogo.getNombre()+"</td>");
                               out.println("<td>"+catalogo.getPrecio()+"</td>");
                               out.println("<td>"+catalogo.getImagen()+"</td>");
                               out.println("</tr>");
                           }
                        %>
                        <tr> 
                            <td>1</td> 
                            <td><img src="img/bici1.png"/></td> 
                            <td>bicicletas marlin 5</td> 
                            <td>25.000</td>
                            <td>Mayor de Edad, residente en la ciudad</td> 
                            <td><a href="datos.jsp?id=1"><button class="btnAlquilar">Alquilar</button></a></td>
                        </tr>
                        <tr> 
                            <td>2</td> 
                            <td><img src="img/bici2.png"/></td> 
                            <td>bicicletas marlin 5</td> 
                            <td>25.000</td>
                            <td>Mayor de Edad, residente en la ciudad</td> 
                            <td><a href="datos.jsp?id=2"><button class="btnAlquilar">Alquilar</button></a></td>
                        </tr>
                        <tr> 
                            <td>3</td> 
                            <td><img src="img/bici3.png"/></td> 
                            <td>bicicletas marlin 5</td> 
                            <td>25.000</td>
                            <td>Mayor de Edad, residente en la ciudad</td> 
                            <td><a href="datos.jsp?id=3"><button class="btnAlquilar">Alquilar</button></a></td>
                        </tr>
                        %>
                    </table>
                </article>
            </section>
            <aside class="sidebar">
                <h1>Publicidad</h1>
                <p></p>
                <img id="img1" src="img/publi2.jpg"/>
                <img src="img/publi1.jpg"/>

            </aside>
        </div>
        <footer class="footer">
            <p>
                Copyright © 2015 Uniminuto | visítanos en <a href="#">webplus</a>
            </p>	
        </footer>
    </body>
</html>
