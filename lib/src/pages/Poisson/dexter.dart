import 'package:flutter/material.dart';
import '´package:config/Models.dart' show CartItem;

class Poisson extends StatelessWidget {
  var cartItems = [
    CartItem(id:13, Strength: 150, Image: 'assets/blobs/Golbat.png', Name:"Golbat", Type: "Tipo: Veneno, Volador", Attacks: "Ataques: Onda supersónica, Ataque rápido.", Description: "Reseña: Clase vampírica, evolución de Zubat, suele habitar en cuevas dada su analogía con los murciélagos. Golbat se alimenta de sangre tanto de Pokémon como de humanos y es capaz de beber más de 10 onzas (300 mililitros) de sangre de una sola vez. Es glotón y bebe tanta sangre que su tipo de sangre cambiará al de su víctima después de alimentarse. Hay algunos Golbat a los que les faltan colmillos como resultado de su intento de beber sangre de Pokémon tipo Acero."),
    CartItem(id:14, Strength: 120, Image: 'assets/blobs/Zubaat.png', Name:"Zubat", Type: "Tipo: Veneno, Volador", Attacks: "Ataques: Onda supersónica, Ataque rápido.", Description: "Reseña: Clase vampírica, suele habitar en cuevas dada su analogía con los murciélagos. Su piel es mayoritariamente azul, aunque las zonas membranosas de sus alas y orejas tienen un tono morado."),
    CartItem(id:37, Strength: 30, Image: 'assets/blobs/Weezing.png', Name:"Weezing", Type: "Tipo: Veneno", Attacks: "Ataques: Ácido, Gas venenoso, Pantalla de Humo", Description: "Reseña: El pokémon ícono de James. Suelen vivir en vertederos, pantanos o ciudades industriales, siendo muy útil dado que absorve gases venenosos y gérmenes."),
    CartItem(id:38, Strength: 30, Image: 'assets/blobs/Arbok.png', Name:"Arbok", Type: "Tipo: Veneno", Attacks: "Ataques: Ácido, Agujas Venenosas, Cola dragón", Description: "Reseña: El pokémon cobra. Es el pokémon ícono de Jessie. Es capaz de asfixiar a sus oponentes ejerciendo gran fuerza de apriete con su cola."),
    CartItem(id:46, Strength: 300, Image: 'assets/blobs/Tentacruel.png', Name:"Tentacruel", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Bomba ácida, Hidrobomba, Onda tóxica", Description: "Reseña: Evolución de Tentacool. Es conocido como el gangster del mar. Tiene aproximadamente 90 tentáculos, los cuales puede alargar para atacar a su presa, con un gran pico lleno de veneno con el cual destruye a sus víctimas. Es de cuerpo gelatinoso por lo cual es difícil de ser atacado en el combate cuerpo a cuerpo."),
    CartItem(id:47, Strength: 200, Image: 'assets/blobs/Tentacool.png', Name:"Tentacool", Type: "Tipo: Agua, Veneno", Attacks: "Ataques: Picotazo Veneno, Hidropulso, Rayo burbuja, Rayo solar", Description: "Reseña: Es un pokémon híbrido entre meduza y pulpo. Su cuerpo está compuesto de Agua y Veneno. Tiene unas joyas rojas en su cabeza, con los cuales puede reflejar los rayos del sol creando unos rayos solares high level. Son pokémons comunes en el oceano, pero difíciles de avistar, dado que generalmente el que los ve, yace frente a ellos."),
    CartItem(id:67, Strength: 400, Image: 'assets/blobs/Venasaur.png', Name:"Venasaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es la evolución máxima del pokémon rana Bulbasaur. Logra ese nivel cuando florece el capullo de Ivysaur. Es difícil de avistar y se alimenta por fotosíntesis."),
    CartItem(id:68, Strength: 200, Image: 'assets/blobs/Ivysaur.png', Name:"Ivysaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es la evolución de Bulbasaur. Logra conseguir ese nivel cuando la calabaza de su preevolución se convierte en un capullo. Es un pokémon extremadamente fuerte y agresivo."),
    CartItem(id:69, Strength: 120, Image: 'assets/blobs/Bulbasaur.png', Name:"Bulbasaur", Type: "Tipo: Hierba", Attacks: "Ataques: Rayo solar, Latigo Sepa, Hojas Navaja", Description: "Reseña: Es una especie de pokémon anfibio con una gran calabaza cargando en su espalda, la cual puede brotar haciendo florecer bosques y jardines frondosos."),
    CartItem(id:71, Strength: 250, Image: 'assets/blobs/Victreebel.png', Name:"Victreebel", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: El pokémon planta carnívora, evolución de Weepinbell. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:72, Strength: 200, Image: 'assets/blobs/Weepinbell.png', Name:"Weepinbell", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Latigo Sepa, Bomba ácida", Description: "Reseña: Pokémon con forma de campana evolución de Bellsprout. En su interior tiene un poderoso ácido capaz de derretir cualquier alimento que ingiera."),
    CartItem(id:73, Strength: 100, Image: 'assets/blobs/Bellsprout.png', Name:"Bellsprout", Type: "Tipo: Hierba, Veneno", Attacks: "Ataques: Hojas Navaja, Ácido", Description: "Reseña: Pokémon con forma de campana sobre un largo tallo con raíces. Bien entrenado, es un pokémon extremadamente ágil y fuerte."),
    CartItem(id:76, Strength: 300, Image: 'assets/blobs/Nidoqueen.png', Name:"Nidoqueen", Type: "Tipo: Nidoqueen", Attacks: "Ataques: ", Description: "Reseña: ."),
    CartItem(id:77, Strength: 150, Image: 'assets/blobs/Nidorina.png', Name:"Nidorina", Type: "Tipo: Veneno", Attacks: "Ataques: Picotazo Venenoso, Bomba lodo, Mordisco, Retribución", Description: "Reseña: El pokémon rinoceronte. Suelen vivir en praderas. Se cree que alguna vez tuvo un cuerno en su frente que lo perdió para no dañar a sus crías."),
    CartItem(id:78, Strength: 70, Image: 'assets/blobs/Nidoran♀.png', Name:"Nidoran♀", Type: "Tipo: Veneno", Attacks: "Ataques: Picadura Venenosa, Bomba lodo, Mordedura", Description: "Reseña: La pokémon rata. Es la hembra de su compañero Nidoran ♂. Tiene unas púas extremadamente venenosas y es capaz de liberar una sustancia totalmente tóxica cuando se siente intimidada."),
    CartItem(id:79, Strength: 350, Image: 'assets/blobs/Nidoking.png', Name:"Nidoking", Type: "Tipo: Tierra, Veneno", Attacks: "Ataques: Puya nociva, Earthquake, Doble patada, Tierra viva, Corte furia, Cola férrea, Megacuerno, Onda tóxica", Description: "Reseña: Con una poderosa coraza, es un pokémon intimidante. Suele no alejarse de su nido familiar, y es muy difícil que sea amaestrado. Generalmente los maestros que tienen uno, lo criaron desde Nidoran."),
    CartItem(id:80, Strength: 150, Image: 'assets/blobs/Nidorino.png', Name:"Nidorino", Type: "Tipo: Veneno", Attacks: "Ataques: Puya nociva, Bomba lodo, Picotazo venenoso, Cornada, Retribución", Description: "Reseña: El pokémon rinoceronte. Suelen vivir en praderas y es pareja de Nidorina. Con poderosas puas en su espalda, son pokémon realmente agresivos y territoriales."),
    CartItem(id:81, Strength: 70, Image: 'assets/blobs/Nidoran♂.png', Name:"Nidoran♂", Type: "Tipo: Veneno", Attacks: "Ataques: Picotazo Venenoso, Bomba lodo, Mordisco, Retribución", Description: "Reseña: Es pareja de Nidoran♀. Tiene un poderoso cuerno en su frente que usa para embestir y poderosas puas en su espalda para protegerse. Mientras más grande sea su cuerno, más venenosa será su capacidad."),
    CartItem(id:98, Strength: 150, Image: 'assets/blobs/Muk.png', Name:"Muk", Type: "Tipo: Veneno", Attacks: "Ataques: Ácido, Languetazo, Sumisión, Onda tóxica, Lanzamugre, Retribución", Description: "Reseña: La pokémon mutante. Se dice que se creó a partir de desechos tóxicos y es realmente fétido, más aun que su predesesor Grimer. Suelen vivir en alcantarillas. Es un pokémon realmente tóxico. Incluso la estela que deja a su paso es venenosa."),
    CartItem(id:99, Strength: 50, Image: 'assets/blobs/Grimer.png', Name:"Grimer", Type: "Tipo: Veneno", Attacks: "Ataques: Ácido, Bomba lodo, Bofetón lodo, Residuos, Retribución", Description: "Reseña: La pokémon mutante. Se dice que se creó a partir de desechos tóxicos y es realmente fétido. Suelen vivir en alcantarillas. Es un pokémon realmente tóxico. Incluso la estela que deja a su paso es venenosa."),
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