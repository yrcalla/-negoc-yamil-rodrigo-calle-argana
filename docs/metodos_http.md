# Métodos HTTP

## GET

Sirve para obtener información de un recurso.

URL:

https://jsonplaceholder.typicode.com/posts/1

Código de respuesta:

200 OK

---

## POST

Sirve para crear un nuevo recurso.

URL:

https://jsonplaceholder.typicode.com/posts

Body:

```json
{
  "title":"Nuevo Post",
  "body":"Contenido",
  "userId":1
}
```

Código de respuesta:

201 Created

---

## PUT

Sirve para reemplazar completamente un recurso.

URL:

https://jsonplaceholder.typicode.com/posts/1

Código de respuesta:

200 OK

---

## PATCH

Sirve para modificar parcialmente un recurso.

URL:

https://jsonplaceholder.typicode.com/posts/1

Código de respuesta:

200 OK

---

## DELETE

Sirve para eliminar un recurso.

URL:

https://jsonplaceholder.typicode.com/posts/1

Código de respuesta:

200 OK

---

## Diferencia entre PUT y PATCH

PUT reemplaza completamente un recurso.

PATCH modifica únicamente los campos indicados.