

package modelos;

import java.util.Date;

/**
 *
 * @author Usuario
 */
public class Matriculas {
    int codigo, codigo_alumno, asistencias, nota;
    double total, monto;
    Date fecha;
    String nro_doc, estado, alumno, curso;

    public Matriculas() {
    }

    public Matriculas(int codigo, int codigo_alumno, int asistencias, int nota, double total, double monto, Date fecha, String nro_doc, String estado, String alumno, String curso) {
        this.codigo = codigo;
        this.codigo_alumno = codigo_alumno;
        this.asistencias = asistencias;
        this.nota = nota;
        this.total = total;
        this.monto = monto;
        this.fecha = fecha;
        this.nro_doc = nro_doc;
        this.estado = estado;
        this.alumno = alumno;
        this.curso = curso;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    

    public int getAsistencias() {
        return asistencias;
    }

    public void setAsistencias(int asistencias) {
        this.asistencias = asistencias;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }

    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getCodigo_alumno() {
        return codigo_alumno;
    }

    public void setCodigo_alumno(int codigo_alumno) {
        this.codigo_alumno = codigo_alumno;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNro_doc() {
        return nro_doc;
    }

    public void setNro_doc(String nro_doc) {
        this.nro_doc = nro_doc;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}