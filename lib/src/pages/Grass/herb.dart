import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:27, Strength: 140, Image: 'assets/blobs/Pinsir.png', Name:"Pinsir", Type: "Tipo: Hierba, Insecto", Attacks: "Ataques: Apriete, Tijera, Picadura, Golpe Roca.", Description: "Reseña: Es un pokémon insecto que habita en bosques con aroboles de sabia, son agresivos y territoriales, poseen largos cuernos en forma de pinzas que puede apretar con dureza."),
    CartItem(id:31, Strength: 400, Image: 'assets/blobs/Exeggutor.png', Name:"Exeggutor", Type: "Tipo: Psíquico, Hierba", Attacks: "Ataques: Ataque psíquico, Rayo psíquico, Esporas", Description: "Reseña: Pokémon con apariencia de palmera y tres cabezas. Suele vivir en junglas o bosques del trópico. Son organizados y viven en tribus. Cada una de sus cabezas tiene su propia personalidad."),
    CartItem(id:32, Strength: 220, Image: 'assets/blobs/Exegcute.png', Name:"Exeggcute", Type: "Tipo: Psíquico, Hierba", Attacks: "Ataques: Ataque Psíquico, Esporas", Description: "Reseña: Son 6 huevos que nunca se separan, son un solo pokémon. Tienen poderes psíquicos de gran ratio."),
    CartItem(id:67, Strength: 400, Image: 'assets/blobs/Venasaur.png', Name:"Venasaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es la evolución máxima del pokémon rana Bulbasaur. Logra ese nivel cuando florece el capullo de Ivysaur. Es difícil de avistar y se alimenta por fotosíntesis."),
    CartItem(id:68, Strength: 200, Image: 'assets/blobs/Ivysaur.png', Name:"Ivysaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es la evolución de Bulbasaur. Logra conseguir ese nivel cuando la calabaza de su preevolución se convierte en un capullo. Es un pokémon extremadamente fuerte y agresivo."),
    CartItem(id:69, Strength: 120, Image: 'assets/blobs/Bulbasaur.png', Name:"Bulbasaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es una especie de pokémon anfibio con una gran calabaza cargando en su espalda, la cual puede brotar haciendo florecer bosques y jardines frondosos."),
    CartItem(id:71, Strength: 250, Image: 'assets/blobs/Victreebel.png', Name:"Victreebel", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: El pokémon planta carnívora, evolución de Weepinbell. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:72, Strength: 200, Image: 'assets/blobs/Weepinbell.png', Name:"Weepinbell", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: Pokémon con forma de campana evolución de Bellsprout. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:73, Strength: 100, Image: 'assets/blobs/Bellsprout.png', Name:"Bellsprout", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Ácido", Description: "Reseña: Pokémon con forma de campana sobre un largo tallo con raíces. Bien entrenado, es un pokémon extremadamente ágil y fuerte."),
    CartItem(id:74, Strength: 120, Image: 'assets/blobs/Bulbasaur.png', Name:"Bulbasaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es una especie de pokémon anfibio con una gran calabaza cargando en su espalda, la cual puede brotar haciendo florecer bosques y jardines frondosos."),
    CartItem(id:76, Strength: 250, Image: 'assets/blobs/Victreebel.png', Name:"Victreebel", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: El pokémon planta carnívora, evolución de Weepinbell. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:77, Strength: 200, Image: 'assets/blobs/Weepinbell.png', Name:"Weepinbell", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: Pokémon con forma de campana evolución de Bellsprout. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:78, Strength: 100, Image: 'assets/blobs/Bellsprout.png', Name:"Bellsprout", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Ácido", Description: "Reseña: Pokémon con forma de campana sobre un largo tallo con raíces. Bien entrenado, es un pokémon extremadamente ágil y fuerte."),
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