import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:8, Strength: 190, Image: 'assets/blobs/Omanyte.png', Name:"Omanyte", Type: "Tipo: Agua", Attacks: "Ataques: Pistola Agua, Retribución.", Description: "Reseña: Su nombre proviene de los Ammonites, una clase de molúscos cefalópodos extintos ámpliamente usados en geología para la datación de rocas y delimitación de zonas estratográficas."),
    CartItem(id:9, Strength: 300, Image: 'assets/blobs/Kabutops.png', Name:"Kabutops", Type: "Tipo: Roca, Agua", Attacks: "Ataques: Roca afilada, Cascada", Description: "Reseña: Pokémon fósil evolución de Kabuto. Cuenta con grandes sables como extensiones de sus brazos. Habita cercano al agua salada dada su afinidad natural con el elemento agua."),
    CartItem(id:41, Strength: 70, Image: 'assets/blobs/Squirtle.png', Name:"Squirtle", Type: "Tipo: Agua", Attacks: "Ataques: Hidrochorro, Chorro de Agua, Burbujas", Description: "Reseña: El pokémon tortuga. Es un pokémon muy amigable y con gran capacidad de adaptación."),
    CartItem(id:42, Strength: 70, Image: 'assets/blobs/Horsea.png', Name:"Horsea", Type: "Tipo: Agua", Attacks: "Ataques: Chorro de Agua, Ataque de tinta, Hidrobomba.", Description: "Reseña: Pokémon del tipo dragón, que se asemeja a un caballo de mar."),
    CartItem(id:43, Strength: 70, Image: 'assets/blobs/Seel.png', Name:"Seel", Type: "Tipo: Agua", Attacks: "Ataques: Chorro de Agua, Hiperrayo", Description: "Reseña: El pokémon foca. Tiene un cuerno en su cabeza con el cual puede lanzar rayos de hielo."),
    CartItem(id:44, Strength: 50, Image: 'assets/blobs/Starmie.png', Name:"Starmie", Type: "Tipo: Agua", Attacks: "Ataques: Chorro de Agua, Hidrochorro, Ataque de estrellas", Description: "Reseña: El pokémon estrella de mar de 10 puntas. Evolución de Staryu. Su cuerpo tiene en su centro, una joya roja rodeada de una coraza dorada."),
    CartItem(id:45, Strength: 50, Image: 'assets/blobs/Staryu.png', Name:"Staryu", Type: "Tipo: Agua", Attacks: "Ataques: Chorro de Agua, Hidrochorro, Ataque de estrella", Description: "Reseña: El pokémon estrella de mar de 5 puntas. Su cuerpo tiene en su centro, una joya roja rodeada de una coraza dorada."),
    CartItem(id:46, Strength: 300, Image: 'assets/blobs/Tentacruel.png', Name:"Tentacruel", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Bomba ácida, Hidrobomba, Onda tóxica", Description: "Reseña: Evolución de Tentacool. Es conocido como el gangster del mar. Tiene aproximadamente 90 tentáculos, los cuales puede alargar para atacar a su presa, con un gran pico lleno de veneno con el cual destruye a sus víctimas. Es de cuerpo gelatinoso por lo cual es difícil de ser atacado en el combate cuerpo a cuerpo."),
    CartItem(id:47, Strength: 200, Image: 'assets/blobs/Tentacool.png', Name:"Tentacool", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Picotazo Veneno, Hidropulso, Rayo burbuja, Rayo solar", Description: "Reseña: Es un pokémon híbrido entre meduza y pulpo. Su cuerpo está compuesto de Agua y Veneno. Tiene unas joyas rojas en su cabeza, con los cuales puede reflejar los rayos del sol creando unos rayos solares high level. Son pokémons comunes en el oceano, pero difíciles de avistar, dado que generalmente el que los ve, yace frente a ellos."),
    CartItem(id:48, Strength: 300, Image: 'assets/blobs/Seadra.png', Name:"Seadra", Type: "Tipo: Agua", Attacks: "Ataques: Hidrochorro, Rayo Burbuja, Ataque de Tinta", Description: "Reseña: El pokémon caballo de mar. Es de clase dragón. Es un pokémon muy hábil, rápido, inteligente y con gran agilidad dentro del agua."),
    CartItem(id:49, Strength: 400, Image: 'assets/blobs/Gyarados.png', Name:"Gyarados", Type: "Tipo: Agua", Attacks: "Ataques: Hidrochorro, Hiperrayo, Embestida", Description: "Reseña: De clase dragón marino. Es un pokémon extremadamente agresivo y territorial."),
    CartItem(id:50, Strength: 300, Image: 'assets/blobs/Cloyster.png', Name:"Cloyster", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Hidrobomba, Explosión de roca, Golpe Coraza", Description: "Reseña: Con coraza más dura que el diamante, vive en corrientes torrentosas apegándose fuertemente a las rocas. Dicen que mientras más heridas se haga, más pinchos le saldrán. Es un pokémon de poca crianza, dado que vive en corrientes fuertes, pero su alimento predilecto siguen siendo las colas de Slowpoke."),
    CartItem(id:51, Strength: 40, Image: 'assets/blobs/Shellder.png', Name:"Shellder", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Rayo burbuja, hidropulso", Description: "Reseña: El pokémon ostra. Siempre anda con su lengua afuera."),
    CartItem(id:52, Strength: 200, Image: 'assets/blobs/Slowking.png', Name:"Slowking", Type: "Tipo: Agua, Psíquico", Attacks: "Ataques: Hidrobomba, Confusión, Hiperrayo", Description: "Reseña: Evoluciona cuando estando con una roca del rey y Shellder le muerde la cola. Nadie ha identificado la raíz de como se genera su evolución. Pero se cree que es un acuerdo que hacen ambos pokémon para ganar equilibrio y poder movilizarse fuera del mar. Aunque la inteligencia de Slowpoke crece considerablemente con su evolución. Es una de las dos posibles evoluciones de Slowpoke"),
    CartItem(id:53, Strength: 180, Image: 'assets/blobs/Slowbro.png', Name:"Slowbro", Type: "Tipo: Agua, Psíquico", Attacks: "Ataques: Hidrobomba, Confusión, Hiperrayo", Description: "Reseña: Evoluciona cuando Shellder le muerde la cola. Nadie ha identificado la raíz de como se genera su evolución. Pero se cree que es un acuerdo que hacen ambos pokémon para ganar equilibrio y poder movilizarse fuera del mar. Aunque la inteligencia de Slowpoke crece considerablemente con su evolución. Es una de las dos posibles evoluciones de Slowpoke"),
    CartItem(id:54, Strength: 300, Image: 'assets/blobs/Lapras.png', Name:"Lapras", Type: "Tipo: Agua, Hielo", Attacks: "Ataques: Hiperrayo, Rayo de Hielo, Hidrobomba, Telepatía", Description: "Reseña: Este pokémon está basado en un plesiosauro. Es un pokémon extremadamente fuerte pero muy difícil de avistar. Generalmente viven en el ártico."),
    CartItem(id:55, Strength: 400, Image: 'assets/blobs/Blastoise.png', Name:"Blastoise", Type: "Tipo: Agua ", Attacks: "Ataques: Hidrobomba", Description: "Reseña: La tortuga suprema. Es evolución de Wartortle. Es de los pokémons más fuertes y rápidos del mundo pokémon."),
    CartItem(id:56, Strength: 200, Image: 'assets/blobs/Wartortle.png', Name:"Wartortle", Type: "Tipo: Agua ", Attacks: "Ataques: Hidrobomba, Chorro de Agua", Description: "Reseña: Evolución de Squirtle. Es un pokémon tortuga muy misterioso."),
    CartItem(id:57, Strength: 250, Image: 'assets/blobs/Golduck.png', Name:"Golduck", Type: "Tipo: Agua, Psíquico", Attacks: "Confusión, Pistola de Agua, Hidrobomba, Rayo hielo, Ataque psíquico", Description: "Reseña: El pokémon pokémon pato. La evolución de psydock.Es un pokémon elegante y extremadamente fuerte y superdotado. Su debilidad son las bellas mujeres."),
    CartItem(id:58, Strength: 100, Image: 'assets/blobs/Psyduck.png', Name:"Psyduck", Type: "Tipo: Agua, Psíquico", Attacks: "", Description: "Reseña: El pokémon pato. Es un pokémon extremadamente fuerte en lo que poderes psíquicos trata. Sin embargo su personalidad es algo distraida por lo que generalmente no sabe usarlos al 100%.."),
    CartItem(id:59, Strength: 200, Image: 'assets/blobs/Kingler.png', Name:"Kingler", Type: "Tipo: Agua ", Attacks: "Ataques: Hiperrayo, burbujas, Golpe Martillo, Prisión Tenaza", Description: "Reseña: El pokémon cangrejo. Es muy fuerte y sus tenazas, duras como el acero, son las más fuertes del mundo pokémon. Suele vivir en la costa, cercano a acantilados, o en el fondo marino."),
    CartItem(id:60, Strength: 70, Image: 'assets/blobs/Krabby.png', Name:"Krabby", Type: "Tipo: Agua ", Attacks: "Ataques: Burbujas, Golpe Martillo, Prisión Tenaza", Description: "Reseña: El pokémon cangrejo. Es muy fuerte y resistente. Suele vivir en la costa, cercano a acantilados, o en el fondo marino."),
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