import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:5, Strength: 1000, Image: 'assets/blobs/Zapdos.png', Name:"Zapdos", Type: "Tipo: Trueno, Volador", Attacks: "Ataques: Rayo control.", Description: "Reseña: Pokemón de clase legendaria con la habilidad de controlar la electricidad a su voluntad. La sola fricción de sus alas genera destellos, rayos y relámpagos. Muchos lo consideran la causa principal de las tormentas eléctricas. Aunque no es fácil de avistar, suele habitar en zonas de tormentas elécticas. Es conocido su recargo energético por el contacto los rayos, y su gusto por visitar plantas eléctricas."),
    CartItem(id:15, Strength: 300, Image: 'assets/blobs/Electabuzz.png', Name:"Electabuzz", Type: "Tipo: Trueno, Lucha", Attacks: "Ataques: Puño eléctrico, Impactrueno.", Description: "Reseña: De clase Humanoide-Felina, es la evolución de Elekid. De su cabeza sobresalen dos antenas con las cuales genera grandes caudales de electricidad. Tiene dos fuertes brazos con los cuales dar puñetazos cargados de electricidad."),
    CartItem(id:16, Strength: 200, Image: 'assets/blobs/Elekid.png', Name:"Elekid", Type: "Tipo: Trueno", Attacks: "Ataques: Impactrueno, Giro eléctrico.", Description: "Reseña: De clase humanoide, genera corriente a partir de los dientes de enchufe tipo A que tiene en su cabeza. Es un pokemón sencible, su ánimo revolotea al presenciar una tormenta eléctrica, dado que su alimentación es principalmente de energía domiciliaria. Tiene dos fuertes brazos los cuales puede girar rápidamente cargándolos de electricidad."),
    CartItem(id:39, Strength: 120, Image: 'assets/blobs/Pikachu.png', Name:"Pikachu", Type: "Tipo: Trueno", Attacks: "Ataques: Impact Trueno, Attack Trueno, Cola de Hierro, Agilidad", Description: "Reseña: El ratón eléctrico. Es un pokémon muy ágil y con gran capacidad de generar corriente con sus los dos polos que tiene marcados en sus mejillas. Son pokémon de gran carácter, difíciles de amaestrar. Pero a la vez son muy fieles y buenos compañeros."),
    CartItem(id:93, Strength: 60, Image: 'assets/blobs/Electrode.png', Name:"Electrode", Type: "Tipo: Trueno", Attacks: "Ataques: Voltiocambio, chispa, placaje, juego sucio, hiperrayo", Description: "Reseña: El pokémon bomba. Es asexuado y tiene apariencia de pokéboll, solo que con los colores invertidos. Suelen agruparse en bandas dntro de centros urbanos o plantas eléctricas causando disturbios y apagones eléctricos."),
    CartItem(id:94, Strength: 40, Image: 'assets/blobs/Voltorb.png', Name:"Voltorb", Type: "Tipo: Trueno", Attacks: "Ataques: Chispa, Placaje, Rayo, Giro, Doble rayo", Description: "Reseña: El pokémon bomba. Es asexuado y tiene apariencia de pokéboll, solo que con los colores invertidos. Suelen agruparse en bandas dntro de centros urbanos o plantas eléctricas causando disturbios y apagones eléctricos."),
    CartItem(id:95, Strength: 120, Image: 'assets/blobs/Magneton.png', Name:"Magneton", Type: "Tipo: Trueno, Acero", Attacks: "Ataques: Impactrueno, Electrocañón, Rayo carga, Bomba imán, Retribución", Description: "Reseña: Cuando el magnetismo de Magnemite se hace muy poderoso, evolucionan juntándose en grupos de 3 naciendo Magnetón. Estudios dicen que se vuelven en un solo pokémon, su mente se fusiona en una."),
    CartItem(id:96, Strength: 70, Image: 'assets/blobs/Magnemite.png', Name:"Magnemite", Type: "Tipo: Trueno, Acero", Attacks: "Ataques: Impactrueno, Rayo, Bomba imán, Retribución", Description: "Reseña: El pokémon imán. En su núcleo tiene un ojo y en sus costados dos imanes. Su magnetismo es capaz de atraer objetos a cientos de metros de distancia."),
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