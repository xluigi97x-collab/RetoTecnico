import com.intuit.karate.junit5.Karate;

public class karateRunnerCompleto {

    @Karate.Test
    Karate ProyectoRunner() {
        return Karate.run("classpath:CasosNegativos", "classpath:CasosPositivos");
    }
}
/**
 mvn test "-Dtest=karateRunnerCompleto"
 **/
