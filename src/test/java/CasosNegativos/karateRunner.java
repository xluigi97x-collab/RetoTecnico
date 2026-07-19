package CasosNegativos;

import com.intuit.karate.junit5.Karate;

public class karateRunner {

    @Karate.Test
    Karate CasosNegativos() {
        return Karate.run("classpath:CasosNegativos");
    }
/**
 mvn test "-Dtest=karateRunner" "-Dkarate.options=classpath:CasosNegativos"

 @Karate.Test
    Karate listar() {
        return Karate.run("classpath:CasosNegativos/listar_usuarios.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate registrar() {
        return Karate.run("classpath:CasosNegativos/registrar_usuario.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate buscar_ID() {
        return Karate.run("classpath:CasosNegativos/buscar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate actualizar_ID() {
        return Karate.run("classpath:CasosNegativos/actualizar_usuarioID.feature")
                .tags("@caso01");
    }
    @Karate.Test
    Karate eliminar_ID() {
        return Karate.run("classpath:CasosNegativos/eliminar_usuarioID.feature")
                .tags("@caso01");
    }**/
}