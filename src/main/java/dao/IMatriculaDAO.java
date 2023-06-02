package dao;

import java.util.List;
import modelos.Alumnos;
import modelos.Cursos;
import modelos.Matriculas;

public interface IMatriculaDAO {
    public List<Alumnos> buscarAlumnos(Alumnos alumno);
    public List<Cursos> buscarCursos();
    public boolean grabarMatricula(String[] datosMatricula,
    String[] codigoCursos, String[] montos);
    // mostrar datos del matriculado
    public List<Matriculas> listarMatriculas(Matriculas matricula);
    
}
