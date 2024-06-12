import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:2, Strength: 400, Image: 'assets/blobs/Charizard.png', Name:"Charizard", Type: "Tipo: Fuego", Attacks: "Ataques: Giro Fuego, Anillo ígneo, Movimiento Sísmico", Description: "Reseña: Pokémon Dragón de Fuego con gran carácter. Es realmente difícil de atrapar o tener un Charizard, solo selectos entrenadores high level lo logran, y generalmente criándolos desde Charmander."),
    CartItem(id:4, Strength: 1000, Image: 'assets/blobs/Moltres.png', Name:"Moltres", Type: "Tipo: Fuego, Volador", Attacks: "Ataques: Fuego Control.", Description: "Reseña: Pokemón de clase legendaria difícil de avistar. Se dice que su aparición anunciará la llegada de la primavera. Su cuerpo está rodeado de fuego, lo que lo asemeja a la mitología del Fénix. Se dice que la llama de la antorcha que inaugura la Liga Pokemón, surgió de la cresta de Moltres: <<La llama que nunca se apaga>>"),
    CartItem(id:5, Strength: 1000, Image: 'assets/blobs/Zapdos.png', Name:"Zapdos", Type: "Tipo: Trueno, Volador", Attacks: "Ataques: Rayo control.", Description: "Reseña: Pokemón de clase legendaria con la habilidad de controlar la electricidad a su voluntad. La sola fricción de sus alas genera destellos, rayos y relámpagos. Muchos lo consideran la causa principal de las tormentas eléctricas. Aunque no es fácil de avistar, suele habitar en zonas de tormentas elécticas. Es conocido su recargo energético por el contacto los rayos, y su gusto por visitar plantas eléctricas."),
    CartItem(id:6, Strength: 1000, Image: 'assets/blobs/Articuno.png', Name:"Articuno", Type: "Tipo: Hielo, Volador", Attacks: "Ataques: Hielo Control, Viento Hielo", Description: "Reseña: Pokemón de clase legendaria con  la habilidad de controlar el hielo a su antojo. Vuela haciendo ondear su cola al viento, exhibiendo su magnifHieloncia. Al volar en inverno, su aleteo congela el agua presente en el aire, provocando que nieve a su paso. Es un pokemón solitario, que es capaz de provocar fuertes ventiscas para evitar hacer contacto."),
    CartItem(id:7, Strength: 400, Image: 'assets/blobs/Aerodactyl.png', Name:"Aerodactyl", Type: "Tipo: Roca, Volador", Attacks: "Ataques: Derribo, Lanzarocas, Avalancha.", Description: "Reseña: Pokémon fósil último de su clase conocido. Nunca atrapado."),
    CartItem(id:13, Strength: 150, Image: 'assets/blobs/Golbat.png', Name:"Golbat", Type: "Tipo: Veneno, Volador", Attacks: "Ataques: Onda supersónica, Ataque rápido.", Description: "Reseña: Clase vampírica, evolución de Zubat, suele habitar en cuevas dada su analogía con los murciélagos. Golbat se alimenta de sangre tanto de Pokémon como de humanos y es capaz de beber más de 10 onzas (300 mililitros) de sangre de una sola vez. Es glotón y bebe tanta sangre que su tipo de sangre cambiará al de su víctima después de alimentarse. Hay algunos Golbat a los que les faltan colmillos como resultado de su intento de beber sangre de Pokémon tipo Acero."),
    CartItem(id:14, Strength: 120, Image: 'assets/blobs/Zubaat.png', Name:"Zubat", Type: "Tipo: Veneno, Volador", Attacks: "Ataques: Onda supersónica, Ataque rápido.", Description: "Reseña: Clase vampírica, suele habitar en cuevas dada su analogía con los murciélagos. Su piel es mayoritariamente azul, aunque las zonas membranosas de sus alas y orejas tienen un tono morado."),
    CartItem(id:79, Strength: 280, Image: 'assets/blobs/Scizor.png', Name:"Scizor", Type: "Tipo: Bicho, Acero", Attacks: "Ataques: Corte Furia, Cabeza de Hierro, Puño Bala", Description: "Reseña: El pokémon Mantis Religiosa de Acero. Tiene unas poderosas pinzas en vez de manos. Es un pokémon temible, aunque con un temperamento mucho más llevadero que el de su pre-evolución."),
    CartItem(id:75, Strength: 250, Image: 'assets/blobs/Scyther.png', Name:"Scyther", Type: "Tipo: Bicho, Volador", Attacks: "Ataques: Corte Furia, Tajo Aéreo, Ala de acero, Zumbido", Description: "Reseña: El pokémon Mantis Religiosa. Tiene unas largas y filosas cuchillas de brazos y unas poderosas alas para moverse con gran agilidad y velocidad. Es el pokémon más temido en el combate cuerpo a cuerpo. Es también conocido como <<El pokémon Ninja>>."),
    CartItem(id:87, Strength: 50, Image: 'assets/blobs/Noctowl.png', Name:"Noctowl", Type: "Tipo: Volador", Attacks: "Ataques: Ataque ala, Bola Sombra, Ataque aéreo, Tinieblas, Paranormal", Description: "Reseña: El pokémon buho."),
    CartItem(id:90, Strength: 300, Image: 'assets/blobs/Pidgeot.png', Name:"Pidgeot", Type: "Tipo: Volador", Attacks: "Ataques: Ala de acero, Ataque ráfaga, Danza pluma, Pájaro osado", Description: "Reseña: Ave de varios metrosd de altura, es capaz de superar la velocidad de los 10 match. Es un pokémon solitario y no vivie en bandadas."),
    CartItem(id:91, Strength: 100, Image: 'assets/blobs/Pidgeotto.png', Name:"Pidgeotto", Type: "Tipo: Volador", Attacks: "Ataques: Ataque ráfaga, Ataque ala, Punta de Acero", Description: "Reseña: De clase ave, es un pokémon que alcanza grandes velocidad y alturas de vuelo y ver a su preza a kilometros de distancia. Sus principales prezas son Exeggcute, Magicarp o pokémons gusanos."),
    CartItem(id:92, Strength: 20, Image: 'assets/blobs/Pidgey.png', Name:"Pidgey", Type: "Tipo: Volador", Attacks: "Ataques: Ataque rápido, Placaje", Description: "Reseña: Vive en bandadas en bosques frondozos. Es un pokémon débil con respecto a sus fuertes evoluciones. Incluso en algunas islas son tan gordos que han perdido su capacidad de volar."),
    ];

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
          Text("Poder de Pelea:"+cartItem.Strength.toString()),
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