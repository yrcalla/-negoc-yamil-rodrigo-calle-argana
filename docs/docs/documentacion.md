# Documentación Proyecto PokeAPI

## Descripción

Este proyecto consume datos de la API pública PokeAPI utilizando JavaScript y Fetch.

La aplicación permite buscar un Pokémon por nombre y mostrar información obtenida desde la API.

---

## Tecnologías utilizadas

- HTML5
- CSS3
- JavaScript
- Fetch API
- Async/Await
- PokeAPI

---

## Funcionalidades

### Buscar Pokémon

El usuario puede ingresar el nombre de un Pokémon y consultar la información disponible en PokeAPI.

Datos mostrados:

- Nombre
- Imagen
- Tipos
- Peso
- Altura

---

### Manejo de errores

La aplicación valida:

- Campo vacío
- Error de conexión
- Pokémon inexistente

---

## Conversión de unidades

La API devuelve:

- Peso en hectogramos
- Altura en decímetros

Para mostrar los datos correctamente se realiza la conversión:

```javascript
peso = data.weight / 10;
altura = data.height / 10;
```

---

## Captura: Pokémon encontrado

Ver archivo:

docs/capturas/pokemon-encontrado.png

---

## Captura: Error de búsqueda

Ver archivo:

docs/capturas/pokemon-error.png

# Captura: Pokémon encontrado

capturas/pokemon-encontrado.png

# Captura: Error

capturas/pokemon-error.png
