<%@page contentType="text/html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="riosHashMap.Rios"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css">

        <title>Listado 2</title>
    </head>
    <body>
        <h2>Tabla ríos:</h2>

        <%
            Map<String, Rios> rios = new HashMap<String, Rios>(); 
            
            rios.put("Tajo", new Rios("Tajo", "tajo.jpg", 1008, 26, 8, 206));
            rios.put("Ebro", new Rios("Ebro", "ebro.jpg", 930, 15, 12, 184));
            rios.put("Duero", new Rios("Duero", "duero.jpg", 897, 29, 10, 208));
            rios.put("Guadiana", new Rios("Guadiana", "guadiana.jpg", 818, 30, 12, 220));
            rios.put("Guadalquivir", new Rios("Guadalquivir", "guadalquivir.jpg", 657, 14, 8, 85));
            
            pageContext.setAttribute("rios", rios);
        %>


        <div class="info" style="overflow-x: auto;">
            <table id="tbody">
                <tr>
                    <th>Nombre</th>
                    <th>Longitud</th>
                    <th>Fecha</th>                  
                </tr>

                <c:forEach var="entry" items="${pageScope.rios}">
                    <tr>
                        <td><c:out value="${entry.value.nombre}"/></td>
                        <td><c:out value="${entry.value.longitud}"/></td>
                        <td><c:out value="${entry.value.getFechaFormateada()}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div class="info"><br>
            <button class="boton" type="submit" onclick="history.back()" name="volver atrás">Volver atrás</button>
        </div>
    </body>
</html>
