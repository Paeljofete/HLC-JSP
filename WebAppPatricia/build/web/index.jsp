<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<%
    int dia = 14;
    int mes = 8;
    int anio = 1985;
    String nombre = "Patricia Sánchez Pérez";
%>

<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="estilos.css" media="all">

        <title>Web Patricia</title>

        <script>
            window.alert("Estás entrando en mi práctica 5. Saludos.");
        </script>
    </head>
    <body>
        <h1>Los 5 ríos más largos de España.</h1>
        <article class="article">
            <jsp:useBean id="clock" class="fecha.JspCalendar" />
            <%
                String fecha = clock.getDate();
            %>        
            <%= fecha%> 
        </article>

        <p>Hogar para una gran variedad de Biodiversidad. Lugar de recreo y entretenimiento. 
            Fuente de abastecimiento de agua potable para millones de personas en España. 
            Los ríos son elementos fundamentales de la geografía española, de los cuales 
            se derivan infinidad de beneficios. ¿Sabes cuáles son los más largos? </p>

        <div class="img">
            <img src="imagenes/riosespana.jpg">
            <p id="pieFoto">Mapa de España con ríos.</p>
        </div>   

        <div class="contenedor">
            <div class="textoIzq">
                <p><a href="listar.jsp">Pulsa</a> para ver la imagen de estos ríos.</p>
            </div>
            <div class="textoDch">
                <p><a href="listar2.jsp">Pulsa</a> para ver más datos de estos ríos.</p>
            </div>
        </div>
        <footer>
            <h4><%= nombre%> 
                &emsp;&emsp;&emsp;&emsp; 
                <%= dia%>/<%= mes%>/<%= anio%> 
                &emsp;&emsp;&emsp;&emsp; 
                Edad: 
                <%                        
                    int a = clock.getYear();
                    int m = clock.getMonthInt();
                    int d = clock.getDayOfMonth();
                    
                    int dAct, mAct, aAct;
                    
                    dAct = d - dia;
                    mAct = m - mes;
                    aAct = a - anio;
                    
                    
                    if (mAct < 0){
                        aAct--;
                    }
                    else if (dAct < 0){
                        aAct--;
                    }                 
                %>
                <%= aAct%>         
                &emsp;&emsp;&emsp;&emsp; 
                Horóscopo: 
                <%
                switch (mes) {
                    case 1:
                        if (dia >= 21) {
                            out.write("Acuario");
                        } else {
                            out.write("Capricornio");
                        }
                        break;
                    case 2:
                        if (dia >= 21) {
                            out.write("Piscis");
                        } else {
                            out.write("Acuario");
                        }
                        break;
                    case 3:
                        if (dia >= 21) {
                            out.write("Aries");
                        } else {
                            out.write("Piscis");
                        }
                        break;
                    case 4:
                        if (dia >= 21) {
                            out.write("Tauro");
                        } else {
                            out.write("Aries");
                        }
                        break;
                    case 5:
                        if (dia >= 21) {
                            out.write("Géminis");
                        } else {
                            out.write("Tauro");
                        }
                        break;
                    case 6:
                        if (dia >= 21) {
                            out.write("Cáncer");
                        } else {
                            out.write("Géminis");
                        }
                        break;
                    case 7:
                        if (dia >= 21) {
                            out.write("Leo");
                        } else {
                            out.write("Cáncer");
                        }
                        break;
                    case 8:
                        if (dia >= 21) {
                            out.write("Virgo");
                        } else {
                            out.write("Leo");
                        }
                        break;
                    case 9:
                        if (dia >= 21) {
                            out.write("Libra");
                        } else {
                            out.write("Virgo");
                        }
                        break;
                    case 10:
                        if (dia >= 21) {
                            out.write("Escorpio");
                        } else {
                            out.write("Libra");
                        }
                        break;
                    case 11:
                        if (dia >= 21) {
                            out.write("Sagitario");
                        } else {
                            out.write("Escorpio");
                        }
                        break;
                    case 12:
                        if (dia >= 21) {
                            out.write("Capricornio");
                        } else {
                            out.write("Sagitario");
                        }
                        break;
                    default:
                        break;
                }
                %>


            </h4>
        </footer>
    </body>    
</html>
