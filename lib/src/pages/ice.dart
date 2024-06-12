import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:3, Strength: 300, Image: 'assets/blobs/Jynx.png', Name:"Jynx", Type: "Tipo: Hielo, Psíquica", Attacks: "Ataques: Confusión, Beso Psíquico, Alud de Hielo", Description: "Reseña: Humanoide mujer, es un pokémon que le encanta moverse y bailar con gracia. Lo hace naturalmente, cuando camina mueve sus caderas con seducción ;). Es un pokémon que le encanta moverse y bailar con gracia.<Vive en el ártico con Santa Klauz ;)"),
    CartItem(id:6, Strength: 1000, Image: 'assets/blobs/Articuno.png', Name:"Articuno", Type: "Tipo: Hielo, Volador", Attacks: "Ataques: Hielo Control, Viento Hielo", Description: "Reseña: Pokemón de clase legendaria con  la habilidad de controlar el hielo a su antojo. Vuela haciendo ondear su cola al viento, exhibiendo su magnifHieloncia. Al volar en inverno, su aleteo congela el agua presente en el aire, provocando que nieve a su paso. Es un pokemón solitario, que es capaz de provocar fuertes ventiscas para evitar hacer contacto."),
    CartItem(id:43, Strength: 70, Image: 'assets/blobs/Seel.png', Name:"Seel", Type: "Tipo: Ice, Agua", Attacks: "Ataques: Chorro de Agua, Hiperrayo", Description: "Reseña: El pokémon foca. Tiene un cuerno en su cabeza con el cual puede lanzar rayos de hielo."),
    CartItem(id:54, Strength: 300, Image: 'assets/blobs/Lapras.png', Name:"Lapras", Type: "Tipo: Agua, Hielo", Attacks: "Ataques: Hiperrayo, Rayo de Hielo, Hidrobomba, Telepatía", Description: "Reseña: Este pokémon está basado en un plesiosauro. Es un pokémon extremadamente fuerte pero muy difícil de avistar. Generalmente viven en el ártico."),
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