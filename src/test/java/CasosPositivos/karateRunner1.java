package CasosPositivos;

import com.intuit.karate.junit5.Karate;

public class karateRunner1 {

    @Karate.Test
    Karate CasosPositivos() {
        return Karate.run("classpath:CasosPositivos");
    }
    /**
    @Karate.Test
    Karate listar() {
        return Karate.run("classpath:CasosPositivos/helplistar_usuario.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate registrar() {
        return Karate.run("classpath:CasosPositivos/helpregistrar_usuario.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate buscar_ID() {
        return Karate.run("classpath:CasosPositivos/helpbuscar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate actualizar_ID() {
        return Karate.run("classpath:CasosPositivos/helpactualizar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate eliminar_ID() {
        return Karate.run("classpath:CasosPositivos/helpeliminar_usuarioID.feature")
                .tags("@caso01");
    }**/
}