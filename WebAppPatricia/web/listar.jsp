<%@page contentType="text/html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="riosHashMap.Rios"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="estilos.css" media="all">

        <title>Listado</title>
    </head>

    <body>
        <h1>Los 5 ríos más largos de España:</h1>

        <%
            Map<String, Rios> rios = new HashMap<String, Rios>();
            
            rios.put("Tajo", new Rios("Tajo", "tajo.jpg", 1008, 26, 8, 206));
            rios.put("Ebro", new Rios("Ebro", "ebro.jpg", 930, 15, 12, 184));
            rios.put("Duero", new Rios("Duero", "duero.jpg", 897, 29, 10, 208));
            rios.put("Guadiana", new Rios("Guadiana", "guadiana.jpg", 818, 30, 12, 220));
            rios.put("Guadalquivir", new Rios("Guadalquivir", "guadalquivir.jpg", 657, 14, 8, 85));
            
            pageContext.setAttribute("rios", rios);
        %>

        <c:forEach var="entry" items="${pageScope.rios}">
            <article class="info">
                <h4><c:out value="${entry.value.nombre}"/></h4>
                <img width="300" height="300" src="imagenes/<c:out value="${entry.value.imagen}"/>"

                     <span><a class="contenedor" href="detalle.jsp?rios=<c:out value="${entry.key}"/>"><br>Más datos</a></span>
        </article>
    </c:forEach>

    <div class="info"><br>
        <button class="boton" type="submit" onclick="history.back()" name="volver atrás">Volver atrás</button>
    </div>

</body>
</html>
