<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="riosHashMap.Rios"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <title>Información detallada</title>
    </head>

    <body>
        <h2>Información detallada:</h2>

        <%
            Map<String, Rios> rios = new HashMap<String, Rios>(); 
            
            rios.put("Tajo", new Rios("Tajo", "tajo.jpg", 1008, 26, 8, 206));
            rios.put("Ebro", new Rios("Ebro", "ebro.jpg", 930, 15, 12, 184));
            rios.put("Duero", new Rios("Duero", "duero.jpg", 897, 29, 10, 208));
            rios.put("Guadiana", new Rios("Guadiana", "guadiana.jpg", 818, 30, 12, 220));
            rios.put("Guadalquivir", new Rios("Guadalquivir", "guadalquivir.jpg", 657, 14, 8, 85));
            
            pageContext.setAttribute("rios", rios);
           
            String clave = request.getParameter("rios");    
            Rios nuevo = new Rios ();          
            nuevo = rios.get(clave);      
        %>

        <div class="info">
            <table id="tbody">
                <tr>
                    <td rowspan = "2">
                        <img width="400" height="400" src="imagenes/<%= nuevo.getImagen()%>" alt="Rios">
                    </td>

                    <th colspan="2">
                        <%= nuevo.getNombre()%>
                    </th>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr>                  
                    <td>Longitud: <%= nuevo.getLongitud()%></td>

                    <td>Fecha: <%= nuevo.getFechaFormateada()%></td>
                </tr>
            </table>
        </div>  

        <div class="info">
            <button class="boton" type="submit" onclick="history.back()" name="volver atrás">Volver atrás</button>
        </div>
    </body>

</html>