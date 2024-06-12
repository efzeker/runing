import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:1, Strength: 400, Image: 'assets/blobs/Magmar.png', Name: "Magmar", Type: "Tipo: Escupe Fuego", Attacks: "Ataques: Cuerpo llama, Llamarada", Description: "Reseña: Pokémon que frecuentemente habita en volcanes activos. Su temperatura corporal es más alta que el magma, por lo que es su hábitat habitual. Su cuerpo está principalmente hecho de fuego."),
    CartItem(id:2, Strength: 400, Image: 'assets/blobs/Charizard.png', Name:"Charizard", Type: "Tipo: Fuego", Attacks: "Ataques: Giro Fuego, Anillo ígneo, Movimiento Sísmico", Description: "Reseña: Pokémon Dragón de Fuego con gran carácter. Es realmente difícil de atrapar o tener un Charizard, solo selectos entrenadores high level lo logran, y generalmente criándolos desde Charmander."),
    CartItem(id:4, Strength: 1000, Image: 'assets/blobs/Moltres.png', Name:"Moltres", Type: "Tipo: Fuego, Volador", Attacks: "Ataques: Fuego Control.", Description: "Reseña: Pokemón de clase legendaria difícil de avistar. Se dice que su aparición anunciará la llegada de la primavera. Su cuerpo está rodeado de fuego, lo que lo asemeja a la mitología del Fénix. Se dice que la llama de la antorcha que inaugura la Liga Pokemón, surgió de la cresta de Moltres: <<La llama que nunca se apaga>>"),
    CartItem(id:25, Strength: 300, Image: 'assets/blobs/Charmeleon.png', Name:"Charmeleon", Type: "Tipo: Fuego", Attacks: "Ataques: Fuego dragón, Colmillo ígneo, Arañazo.", Description: "Reseña: Lagarto bípedo de color rojo oscuro y rojo claro, vive en zonas rocosas o volcanosas."),
    CartItem(id:82, Strength: 250, Image: 'assets/blobs/Rapidash.png', Name:"Rapidash", Type: "Tipo: Fuego", Attacks: "Ataques: Giro fuego, Llamarada, Ascuas, Retribución, Patada Baja", Description: "Reseña: El pokémon caballo unicornio de fuego. Es uno de los pokémon más rápidos y con mayor aceleración que existen."),
    CartItem(id:103, Strength: 300, Image: 'assets/blobs/Arcanine.png', Name:"Arcanine", Type: "Tipo: Fuego", Attacks: "Ataques: Colmillo igneo, Alarido, Mordisco, Lanzallamas, Llamarada, Terratembor, Retribución", Description: "Reseña: Alguna vez fue considerado un pokémon legendario, utilizado por las primeras civilizaciones para alejar los malos espíritus. Con los años se fueron multiplicando. Son pokémon muy inteligentes y con gran ímpetu por ayudar ser un aporte para la sociedad."),
    CartItem(id:104, Strength: 100, Image: 'assets/blobs/Growlithe.png', Name:"Growlithe", Type: "Tipo: Fuego", Attacks: "Ataques: Ascuas, Lanzallamas, Mordisco, Retribución, Golpe cuerpo", Description: "Reseña: Pokémon híbrido entre león y perro de fuego. Está en su ADN el ayudar al prójimo, tanto así, que muchas veces forman parte de las brígadas de rescate de los cuerpos de bomberos."),
    CartItem(id:105, Strength: 300, Image: 'assets/blobs/Mr.Mime.png', Name:"Mr. Mime", Type: "Tipo: Psíquico", Attacks: "Ataques: Pantomima, Confusión, Psicorrayo, Cabezazo Zen, Retribución", Description: "Reseña: El pokémon mimo. Capaz de crear poderosas barreras e incluso usarlas como ataques. Es un pokémon tranquilo y a menudo es visto viviendo en sociedad."),
  ];

  MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return _CartItem(cartItems[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
        ),
        itemCount: cartItems.length);
  }
}

class _CartItem extends StatelessWidget {
  final CartItem cartItem;

  const _CartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          border: Border.all(color:Colors.redAccent)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Poder de Pelea:${cartItem.Strength}"),
          Image.asset(cartItem.Image, width: 120, height: 120,),
          Text(cartItem.Name),
          Text(cartItem.Type),
          Text(cartItem.Attacks),
          Text(cartItem.Description),
        ],
      ),
    );
  }
}