import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:35, Strength: 10, Image: 'assets/blobs/Meowth.png', Name:"Meowth", Type: "Tipo: Normal", Attacks: "Ataques: Arañazo, Día de Pago", Description: "Reseña: El pokémon gato. Es un pokémon común, aunque el del Team Rocket tiene la habilidad de hablar idioma humano, por lo que suele ser el intermediario para entender los sentimientos de los pokémons. Es común verlo en callejones o deambulando por ciudades."),
    CartItem(id:40, Strength: 30, Image: 'assets/blobs/Farfetchd.png', Name:"Farfetch'd", Type: "Tipo: Normal", Attacks: "Ataques: Golpe crítico", Description: "Reseña: No suelta su cebollín. Lo usa para defenderse cuando se siente amenazado. En un pokémon inteligente y ágil."),
    CartItem(id:64, Strength: 10, Image: 'assets/blobs/Chansey.png', Name:"Chansey", Type: "Tipo: Normal", Attacks: "Ataques: Curación", Description: "Reseña: La pokémon enfermera. Es fiel compañera de la enfermera Joy. Tiene excelentes dotes curativos."),
    CartItem(id:65, Strength: 70, Image: 'assets/blobs/Clefable.png', Name:"Clefable", Type: "Tipo: Hada", Attacks: "Ataques: Brillo mágico, fuerza lunar, Puño meteoro, Metrónomo", Description: "Reseña: Se dice que vienen del espacio. Ellas generan un campo magnético a su al rededor al mover sus brazos. Son pokémon nocturnos y muy difíciles de ver. Le suelen hacer ceremonias a la luna."),
    CartItem(id:66, Strength: 160, Image: 'assets/blobs/Clefairy.png', Name:"Clefairy", Type: "Tipo: Hada", Attacks: "Ataques: Fuerza lunar, Golpe cuerpo, Voz cautivadora, Metrónomo", Description: "Reseña: Se dice que vienen del espacio. Ellas generan un campo magnético a su al rededor al mover sus brazos. Son pokémon nocturnos y muy difíciles de ver. Le suelen hacer ceremonias a la luna."),
    CartItem(id:70, Strength: 300, Image: 'assets/blobs/Snorlax.png', Name:"Snorlax", Type: "Tipo: Normal", Attacks: "Ataques: Hiperrayo, Sumisión", Description: "Reseña: Es un pokémon extremadamente fuerte, pero muy difícil de verlo despierto. Gran parte de su vida está en proceso de hibernación, y cuando está despierto, comiendo. Generalmente vive en bosques con gran cantidad de árboles frutales."),
    CartItem(id:85, Strength: 120, Image: 'assets/blobs/Dodrio.png', Name:"Dodrio", Type: "Tipo: Normal", Attacks: "Ataques: Ala de acero, Finta, Pájaro osado, Pico Taladro, Golpe aéreo, Aire afilado", Description: "Reseña: El pokémon ñandú de 3 cabezas. Cada una de sus 3 cabezas representa una personalidad, la tristeza, la dicha y la ira. A menudo suelen llevarse mal, pudiendo pasar atacándose todo el día entre ellas. Es un pokémon muy veloz y audaz."),
    CartItem(id:86, Strength: 50, Image: 'assets/blobs/Doduo.png', Name:"Doduo", Type: "Tipo: Normal", Attacks: "Ataques: Ataque rápido, Picotazo, Pájaro Osado, Ataque rápido", Description: "Reseña: El pokémon ñandú de 2 cabezas. Es un pokémon cazador y de mal carácter."),
    CartItem(id:97, Strength: 70, Image: 'assets/blobs/Ditto.png', Name:"Ditto", Type: "Tipo: Normal", Attacks: "Ataques: Transformación, Combate", Description: "Reseña: El pokémon metamorfo. Capaz de tomar la apariencia de cualquier pokémon que vea. Incluso sus poderes, aunque con un menos nivel de poder."),
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