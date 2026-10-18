const boton = document.getElementById("buscar");
const resultado = document.getElementById("resultado");
const mensaje = document.getElementById("mensaje");

boton.addEventListener("click", buscarPokemon);

async function buscarPokemon() {

    const nombre = document
        .getElementById("pokemon")
        .value
        .trim()
        .toLowerCase();

    if (!nombre) {

        mensaje.textContent =
            "Ingrese un Pokémon";

        return;
    }

    try {

        mensaje.textContent =
            "Cargando...";

        resultado.innerHTML = "";

        const response =
            await fetch(
                `https://pokeapi.co/api/v2/pokemon/${nombre}`
            );

        if (!response.ok) {
            throw new Error("No encontrado");
        }

        const data =
            await response.json();

        const tipos =
            data.types
                .map(
                    tipo => tipo.type.name
                )
                .join(", ");

        mensaje.textContent = "";

        resultado.innerHTML = `
            <h2>${data.name}</h2>

            ${data.sprites.front_default}

            <p>
            <strong>Tipos:</strong>
            ${tipos}
            </p>

            <p>
            <strong>Peso:</strong>
            ${data.weight / 10} kg
            </p>

            <p>
            <strong>Altura:</strong>
            ${data.height / 10} m
            </p>
        `;

    } catch(error) {

        mensaje.textContent =
            "El Pokémon no existe o hubo un error en la conexión.";

    }

}