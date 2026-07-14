# Reto de Automatización QA - Backend

Este proyecto contiene una suite de pruebas automatizadas en **Karate DSL** para validar el API de [ServeRest](https://serverest.dev).  
Se implementan operaciones CRUD completas (registrar, buscar, actualizar, eliminar, listar) con escenarios positivos y negativos, generación dinámica de datos y reportes automáticos.

---

## 📦 Requisitos
- Java 11+
- Maven 3+
- IDE como IntelliJ IDEA
---

## ▶️ Cómo ejecutar los tests
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/tuusuario/repo-karate.git
   cd repo-karate
   
mvn test

target/karate-reports/karate-summary.html

retoBackEnd/
│
├── src/test/java/retoBackEnd/
│   └── RunnerGeneral.java
│
└── src/test/resources/HELPERS/
├── registrar_usuario.feature
├── buscar_usuarioID.feature
├── actualizar_usuarioID.feature
├── eliminar_usuarioID.feature
└── listar_usuarios.feature

✅ Casos cubiertos
- Registrar usuario: creación con email dinámico (UUID) para evitar duplicados.
- Buscar usuario por ID: validación de existencia.
- Actualizar usuario: actualización con mismo correo (200) y con correo nuevo (201).
- Eliminar usuario: borrado exitoso por ID.
- Listar usuarios: validación de cantidad y esquema.
- Casos negativos: validaciones de error en email inválido, duplicados, etc.

🔧 Helpers
- Cada operación CRUD está encapsulada en un helper:
- registrar_usuario.feature → devuelve _id y email dinámico.
- buscar_usuarioID.feature → valida búsqueda por ID.
- actualizar_usuarioID.feature → actualiza datos del usuario.
- eliminar_usuarioID.feature → elimina usuario existente.
- listar_usuarios.feature → lista todos los usuarios.
- Los helpers se llaman entre sí con call read(...) para reutilizar datos y encadenar operaciones.

🛡️ Validaciones
- Status codes esperados (200, 201, 400).
- Mensajes de respuesta (Cadastro realizado com sucesso, Registro alterado com sucesso, Registro excluído com sucesso).
- Validaciones de esquema JSON en las respuestas.

📝 Notas
- Los correos se generan dinámicamente con UUID para evitar conflictos.
- Se incluyen casos negativos (email inválido, duplicado, etc.).
- Reportes HTML se generan automáticamente en target/karate-reports.
- Proyecto preparado para ser mostrado en un reto técnico con organización clara y reutilización de código.










## Reto de Automatización QA - BackEnd

Este proyecto tiene como objetivo automatizar las pruebas de una API de usuarios utilizando Karate DSL. A continuación se detallan los pasos para la configuración del proyecto, estructura, y cómo se han implementado las pruebas para cada uno de los endpoints de la API. Las pruebas serán realizadas para la API de Usuarios de ServeRest (https://serverest.dev/)

### Requisitos
- Java 8 o superior.
- Karate DSL: Se utilizará Karate para la automatización de las pruebas.
- Maven para la gestión de dependencias.
- API de usuarios disponible para pruebas.

### Instalación
###### 1. Clonar el repositorio
Primero, clonar el repositorio en tu máquina local:

`git clone https://github.com/DMateo-123/Reto-BackEnd.git `

###### 2. Configurar el proyecto
Instalar las dependencias Maven

### Estructura del Proyecto
La estructura del proyecto es la siguiente:

- src/main/test/java/REST/: Carpeta donde se encuentran los archivos de características (.feature).

- - user-delete.feature: Prueba para eliminar un usuario.

- - user-get.feature: Prueba para listar todos los usuarios.

- - user-getID.feature: Prueba para buscar un usuario por ID.

- - user-post.feature: Prueba para registrar un nuevo usuario.

- - user-put.feature: Prueba para actualizar los datos de un usuario.

### Validaciones

Cada prueba valida que:

- Las respuestas tengan el formato correcto (JSON).
- El código de estado HTTP sea el esperado.
- Los valores en la respuesta sean los correctos.

### Ejecución de las Pruebas
El proyecto está configurado para ejecutar las pruebas utilizando un runner en Java. La clase karateRunner.java contiene el siguiente código para ejecutar las pruebas:



    import com.intuit.karate.junit5.Karate;
    
    public class karateRunner {
    
        @Karate.Test
        Karate testSample() {
            return Karate.run("classpath:REST");
        }
    }

###### Explicación:
Karate.run("classpath:REST"): Aquí se especifica la ruta del archivo .feature o de la carpeta que contiene las pruebas de Karate. Por ejemplo, si deseas ejecutar el archivo user-get.feature en específico, la ruta sería "classpath:REST/user-get.feature".