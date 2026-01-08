package datos;

import java.util.ArrayList;
import modelo.Estudiante;

public class BaseDatosSimulada {

    private static ArrayList<Estudiante> lista = new ArrayList<>();

    public static void agregar(Estudiante e) {
        lista.add(e);
    }

    public static ArrayList<Estudiante> obtenerLista() {
        return lista;
    }
}
