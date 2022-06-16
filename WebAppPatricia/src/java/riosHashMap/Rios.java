package riosHashMap;

import fecha.JspCalendar;
import java.util.Calendar;

public class Rios {

    private String nombre;
    private String imagen;
    private int longitud;
    private Calendar fecha;

    public Rios() {
    }

    public Rios(String nombre, String imagen, int longitud, int dia, int mes, int anio) {
        this.nombre = nombre;
        this.imagen = imagen;
        this.longitud = longitud;
        
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_MONTH, dia);
        cal.set(Calendar.MONTH, mes + 1);
        cal.set(Calendar.YEAR, anio);
        
        this.fecha = cal;
    }  

    //Getters.
    public String getNombre() {
        return nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public int getLongitud() {
        return longitud;
    }
    
    public String getFechaFormateada() {
       return JspCalendar.fechaFormateada(fecha);
    }

    @Override
    public String toString() {
        return "rios{" + "nombre=" + nombre + ", imagen=" + imagen + ", longitud=" + longitud + ", fecha=" + fecha + '}';
    }
}
