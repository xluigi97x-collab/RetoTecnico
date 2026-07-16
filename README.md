# Reto de Automatización

Este proyecto contiene una suite de pruebas automatizadas en **Karate DSL** para validar el API de [ServeRest](https://serverest.dev).  
Se implementan operaciones CRUD completas (registrar, buscar, actualizar, eliminar, listar) con escenarios **positivos** y **negativos**, organizados en features y ejecutados mediante runners en Java.

---

## 📦 Requisitos
- Java 11+
- Maven 3+
- IDE como IntelliJ IDEA

---

## 📂 Estructura del proyecto

- `HELPERS/` → Features positivos (Registrar, Buscar, Actualizar, Eliminar, Listar).
- `CasosNegativos/` → Features negativos (validaciones de error).
- `HELPERS/karateRunner.java` → Runner para ejecutar escenarios positivos.
- `CasosNegativos/karateRunner.java` → Runner para ejecutar escenarios negativos.

---

## ✅ Casos positivos

1. **Registrar usuario**
   - Se crea un usuario con datos válidos.
   - Se genera un correo dinámico para evitar duplicados.
   - Se guarda el `id` y el `email` en una variable global para reutilizarlos.

2. **Buscar usuario por ID**
   - Se obtiene el `id` del registro y se hace un `GET`.
   - Se valida que el sistema devuelva el mismo `id`.

3. **Actualizar usuario**
   - Se registra un usuario, se obtiene su `id` y se hace un `PUT`.
   - Se cambian nombre y correo, validando el mensaje de éxito.

4. **Eliminar usuario**
   - Se registra un usuario, se obtiene su `id` y se hace un `DELETE`.
   - Se valida el mensaje ‘Registro excluído com sucesso’.

5. **Listar usuarios**
   - Se hace un `GET /usuarios`.
   - Se valida que la respuesta contenga la propiedad `quantidade`.

---

## ❌ Casos negativos

1. **Registrar usuario con email duplicado**
   - Se intenta registrar un usuario con un correo ya existente.
   - Se valida que la API devuelva error `400` y el mensaje correspondiente.

2. **Buscar usuario inexistente**
   - Se consulta un `id` inventado.
   - Se valida que la API responda con ‘Usuário não encontrado’.

3. **Actualizar usuario inválido**
   - Se intenta hacer un `PUT` sin un `id` válido.
   - Se valida que la API devuelva `405` y el mensaje de error.

4. **Eliminar usuario inexistente**
   - Se hace un `DELETE` con un `id` que no existe.
   - La API responde con status `200` pero aclara que no había registros para borrar.

5. **Listar usuarios con endpoint incorrecto**
   - Se consulta un endpoint mal escrito.
   - Se valida que la API devuelva error `400`.

---

## ▶️ Ejecución con Runners

### Runner de positivos (`HELPERS/karateRunner.java`)
Cada método apunta a un feature positivo y se ejecuta con `@Karate.Test`.  
Ejemplo:
@Karate.Test
Karate registrar() {
    return Karate.run("classpath:HELPERS/helpregistrar_usuario.feature")
            .tags("@caso01");
}

### Runner de negativos (CasosNegativos/karateRunner.java)
Separado en un paquete distinto para mantener orden entre pruebas positivas y negativas.
Ejemplo:
@Karate.Test
Karate registrar() {
return Karate.run("classpath:CasosNegativos/registrar_usuario.feature")
.tags("@caso01");
}

## 🚀 Cómo ejecutar los tests

### 1. Clonar el repositorio
``bash
git clone https://github.com/tuusuario/repo-karate.git
cd repo-karate

### 2. Ejecutar directamente desde IntelliJ
   - Abrir el archivo karateRunner.java.
   - Seleccionar el método que quieras correr (ej: registrar, buscar_ID).
   - Clic derecho → Run 'registrar()'.