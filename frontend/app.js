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
        mensaje.textContent = "Ingrese un Pokémon";
        resultado.innerHTML = "";
        return;
    }

    try {

        mensaje.textContent = "Cargando...";
        resultado.innerHTML = "";

        const response = await fetch(
            `https://pokeapi.co/api/v2/pokemon/${nombre}`
        );

        if (!response.ok) {
            throw new Error("Pokémon no encontrado");
        }

        const pokemon = await response.json();

        const tipos = pokemon.types
            .map(tipo => tipo.type.name)
            .join(", ");

            console.log(pokemon.sprites.front_default);

             resultado.innerHTML = `
    <h2>${pokemon.name.toUpperCase()}</h2>

    <img
        src="${pokemon.sprites.front_default}"strong>
        ${tipos}
    </p>

    <p>
strong>
        ${pokemon.weight / 10} kg
    </p>

    <p>
        <strong>Altura:</strong>
        ${pokemon.height / 10} m
    </p>
`;

        mensaje.textContent = "";

    } catch (error) {

        mensaje.textContent =
            "El Pokémon no existe o hubo un error.";

        resultado.innerHTML = "";
    }
}