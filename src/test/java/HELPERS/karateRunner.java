package HELPERS;

import com.intuit.karate.junit5.Karate;

public class karateRunner {

    @Karate.Test
    Karate listar() {
        return Karate.run("classpath:HELPERS/helplistar_usuario.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate registrar() {
        return Karate.run("classpath:HELPERS/helpregistrar_usuario.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate buscar_ID() {
        return Karate.run("classpath:HELPERS/helpbuscar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate actualizar_ID() {
        return Karate.run("classpath:HELPERS/helpactualizar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate eliminar_ID() {
        return Karate.run("classpath:HELPERS/helpeliminar_usuarioID.feature")
                .tags("@caso01");
    }
}