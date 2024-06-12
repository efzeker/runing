import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:15, Strength: 300, Image: 'assets/blobs/Electabuzz.png', Name:"Electabuzz", Type: "Tipo: Trueno, Lucha", Attacks: "Ataques: Puño eléctrico, Impactrueno.", Description: "Reseña: De clase Humanoide-Felina, es la evolución de Elekid. De su cabeza sobresalen dos antenas con las cuales genera grandes caudales de electricidad. Tiene dos fuertes brazos con los cuales dar puñetazos cargados de electricidad."),
    CartItem(id:23, Strength: 250, Image: 'assets/blobs/Hitmonlee.png', Name:"Hitmonlee", Type: "Tipo: Lucha", Attacks: "Ataques: Doble Patada, A bocajarro, Golpe roca, Demolición.", Description: "Reseña: Pokémon especialista en patadas, que gracias a su agilidad y elasticidad, puede dar hacia cualquier dirección y con un gran alcance, dado que sus piernas tienen forma de resorte. Al estirarse, incluso pueden doblar su altura. Posee un gran equilibrio y sus pies son duros como el diamante. Es realmente difícil de ver a un maestro pokémon que tenga uno. Generalmente son maestros pokémon con habilidades en el combate cuerpo a cuerpo."),
    CartItem(id:24, Strength: 200, Image: 'assets/blobs/Hitmonchan.png', Name:"Hitmonchan", Type: "Tipo: Lucha", Attacks: "Ataques: Puño Incremento, A bocajarro, Golpe roca.", Description: "Reseña: Boxeador innato conocido como el maestro de los puños, dada la velocidad y fuerza con que puede lanzarlos. Es capaz de noquear a casi cualquier oponente, por lo que es muy difícil tener uno, generalmente deben ser maestros pokémon con habilidades en el combate cuerpo a cuerpo."),
    CartItem(id:61, Strength: 300, Image: 'assets/blobs/Heracross.png', Name:"Heracross", Type: "Tipo: Insecto", Attacks: "Ataques: Golpe Cuerno", Description: "Reseña: Es un pokémon muy fuerte y hábil y de gran resistencia, gracias a una fuerte coraza que lo protege. Generalmente vive entre insectos y pasa gran parte de su día bebiendo sabia."),
    CartItem(id:83, Strength: 250, Image: 'assets/blobs/Primeape.png', Name:"Primeape", Type: "Tipo: Lucha", Attacks: "Ataques: Contraataque, A bocajarro, Golpe Karate, Tajo cruzado, Tajo umbreo, Patada baja", Description: "Reseña: El pokémon primate sin cola. Tiene unos grilletes para contener su fuerza y velocidad para pelear. Tiene un fuerte temperamento y si lo haces enojar, te perseguirá hasta destruirte."),
    CartItem(id:84, Strength: 100, Image: 'assets/blobs/Mankey.png', Name:"Mankey", Type: "Tipo: Lucha", Attacks: "Ataques: Golpe Karate, Arañazo, Tajo Cruzado, Demolición, Puntapié", Description: "Reseña: El pokémon mono. Es realmente colérico y temperamental. No es recomendable acercársele, sobre todo si no está cerca de su manada."),
    CartItem(id:100, Strength: 180, Image: 'assets/blobs/Machamp.png', Name:"Machamp", Type: "Tipo: Lucha", Attacks: "Ataques: Contraataque, Golpe karate, Puño bala, Roca afilada, Retribución", Description: "Reseña: El luchador de cuatro brazos. Tiene una velocidad para los puñetazos única en el mundo pokémon."),
    CartItem(id:101, Strength: 100, Image: 'assets/blobs/Machoke.png', Name:"Machoke", Type: "Tipo: Lucha", Attacks: "Ataques: Golpe karate, Puño dinámico, Patada baja, Tajo cruzado, Demolición, Sumisión, Retribución", Description: "Reseña: El pokémon físicoculturista. Es capaz de levantar miles de kilogramos con tan solo una mano."),
    CartItem(id:102, Strength: 70, Image: 'assets/blobs/Machop.png', Name:"Machop", Type: "Tipo: Lucha", Attacks: "Ataques: Golpe karate, Golpe roca, Tajo cruzado, Demolición, Retribución", Description: "Reseña: Es un pokémon híbrido entre humano y tiburón. Es un pokémon extremadamente fuerte y rápido. Además de ser una eminencia en artes marciales."),
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