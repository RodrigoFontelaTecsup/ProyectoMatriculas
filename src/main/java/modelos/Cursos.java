
package modelos;

import java.sql.Date;

public class Cursos {
    int codigo;
    String nombre;
    Double costo;
    Date fec_ini;
    Date fec_fin;
    int duracion;
    int sesiones;
    int capacidad;
    int inscritos;
    String estado;
    
    public Cursos(){
    
    }

    public Cursos(int codigo, String nombre, Double costo, Date fec_ini, Date fec_fin, int duracion, int sesiones, int capacidad, int inscritos, String estado) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.costo = costo;
        this.fec_ini = fec_ini;
        this.fec_fin = fec_fin;
        this.duracion = duracion;
        this.sesiones = sesiones;
        this.capacidad = capacidad;
        this.inscritos = inscritos;
        this.estado = estado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getCosto() {
        return costo;
    }

    public void setCosto(Double costo) {
        this.costo = costo;
    }

    public Date getFec_ini() {
        return fec_ini;
    }

    public void setFec_ini(Date fec_ini) {
        this.fec_ini = fec_ini;
    }

    public Date getFec_fin() {
        return fec_fin;
    }

    public void setFec_fin(Date fec_fin) {
        this.fec_fin = fec_fin;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getSesiones() {
        return sesiones;
    }

    public void setSesiones(int sesiones) {
        this.sesiones = sesiones;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getInscritos() {
        return inscritos;
    }

    public void setInscritos(int inscritos) {
        this.inscritos = inscritos;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
