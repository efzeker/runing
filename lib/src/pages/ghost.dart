import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:10, Strength: 350, Image: 'assets/blobs/Gengar.png', Name:"Gengar", Type: "Tipo: Fantasma", Attacks: "Ataques: Languetazo, Bola sombra.", Description: "Reseña: Evolución Suprema de Gastly. Generalmente viven en castillos abandonados o lugares tenebrosos. Es un pokemón high level, aunque hay numerosos casos de entrenadores high level que logran atrapar a un Gengar, las estadísticas dicen que los entrenadores high level que tienen un Gengar, generalmente lo criaron desde Gastly."),
    CartItem(id:11, Strength: 300, Image: 'assets/blobs/Haunter.png', Name:"Haunter", Type: "Tipo: Fantasma", Attacks: "Ataques: Languetazo, Bola sombra.", Description: "Reseña: El Fantasma supremo, la evolución máxima de Gastly, capaz de robar almas y atemorizar pueblos."),
    CartItem(id:12, Strength: 250, Image: 'assets/blobs/Gastly.png', Name:"Gastly", Type: "Tipo: Fantasma, Veneno", Attacks: "Ataques: Languetazo, Bomba lodo.", Description: "Reseña: El fantasma tóxico, lo que entra en contacto con él lo envena."),
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