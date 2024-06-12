import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class Ground extends StatelessWidget {
  var cartItems = [
    CartItem(id:21, Strength: 250, Image: 'assets/blobs/Marowak.png', Name:"Marowak", Type: "Tipo: Tierra", Attacks: "Ataques: Lanzamiento de Hueso, Bofetón, Earthquake.", Description: "Reseña: Pokémon de clase reptil bípodo evolución de Cubone, que al fusionar, su cráneo y el de su fallecida madre se fusionan, dandole mayor resistibilidad y confortabilidad en su andar. Es un pokémon solitario, son pocos los entrenadores que logran amaestrarlo."),
    CartItem(id:22, Strength: 180, Image: 'assets/blobs/Cubone.png', Name:"Cubone", Type: "Tipo: Tierra", Attacks: "Ataques: Lanzamiento de Hueso, Bofetón", Description: "Reseña: Pokémon de clase reptil bípodo, que lleva cargando en su cabeza, el cráneo de su difunta madre. Es un pokémon solitario y melancólico."),
    CartItem(id:26, Strength: 230, Image: 'assets/blobs/Taurus.png', Name:"Taurus", Type: "Tipo: Tierra", Attacks: "Ataques: Placaje, Earthquake.", Description: "Reseña: El pokémon toro. Generalmente violento, vive en manadas. Es un pokémon con mucha resistencia"),
    CartItem(id:88, Strength: 80, Image: 'assets/blobs/Sandslash.png', Name:"Sandslash", Type: "Tipo: Tierra", Attacks: "Ataques: Disparo lodo, Garra metal, Earthquake, Retribución, Tajo umbrio, Tumba rocas", Description: "Reseña: Con coraza de espuas, Sandslash es un pokémon cuerpoespín que vive en zonas áridas. Es cazador, agresivo, pero si se ve sobrepasada huye haciendo tormentas de arena y escondiéndose bajo tierra."),
    CartItem(id:89, Strength: 30, Image: 'assets/blobs/Sandshrew.png', Name:"Sandshrew", Type: "Tipo: Tierra", Attacks: "Ataques: Disparo lodo, Arañazo, Avalancha, Bucle Arena, Retribución", Description: "Reseña: El pokémon armadillo. Cuenta con una coraza muy dura que utiliza como sistema de defensa haciéndose bolita hasta que pase el peligro."),
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