import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:7, Strength: 400, Image: 'assets/blobs/Aerodactyl.png', Name:"Aerodactyl", Type: "Tipo: Roca, Volador", Attacks: "Ataques: Derribo, Lanzarocas, Avalancha.", Description: "Reseña: Pokémon fósil último de su clase conocido. Nunca atrapado."),
    CartItem(id:9, Strength: 300, Image: 'assets/blobs/Kabutops.png', Name:"Kabutops", Type: "Tipo: Roca, Agua", Attacks: "Ataques: Roca afilada, Cascada", Description: "Reseña: Pokémon fósil evolución de Kabuto. Cuenta con grandes sables como extensiones de sus brazos. Habita cercano al agua salada dada su afinidad natural con el elemento agua."),
    CartItem(id:28, Strength: 250, Image: 'assets/blobs/Golem.png', Name:"Golem", Type: "Tipo: Roca", Attacks: "Ataques: Ataque rápido, Bofetón lodo, Avalancha.", Description: "Reseña: De coraza dura capaz de resistir impactos de dinamita sin daño alguno."),
    CartItem(id:29, Strength: 220, Image: 'assets/blobs/Graveler.png', Name:"Graveler", Type: "Tipo: Roca", Attacks: "Ataques: Ataque rápido, Bofetón lodo, Avalancha.", Description: "Reseña: Su nombre viene de la grava, de coraza extremadamente dura puede girar en forma de avalancha."),
    CartItem(id:30, Strength: 250, Image: 'assets/blobs/Rhyhorn.png', Name:"Rhyhorn", Type: "Tipo: Roca, Tierra", Attacks: "Ataques: Derribo, Demolición.", Description: "Reseña: Rinoceronte de roca que choca todo lo que se le cruce. Sin miedo podría atravezar un bloque de acero."),
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