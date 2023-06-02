package dao;

import java.util.List;
import modelos.Alumnos;

public interface IAlumnosDAO {

    public boolean registrar(Alumnos alumno);
    public List<Alumnos> obtener();
    public boolean actualizar(Alumnos alumno);
    public boolean eliminar(String[] alumnos);
    public Alumnos buscar(int codigo);
    
    // obtener datos alumno
    
}
