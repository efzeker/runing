import 'package:flutter/material.dart';
import 'Models.dart' show CartItem;

class MyCart extends StatelessWidget {
  var cartItems = [
    CartItem(id:3, Strength: 300, Image: 'assets/blobs/Jynx.png', Name:"Jynx", Type: "Tipo: Hielo, Psíquica", Attacks: "Ataques: Confusión, Beso Psíquico, Alud de Hielo", Description: "Reseña: Humanoide mujer, es un pokémon que le encanta moverse y bailar con gracia. Lo hace naturalmente, cuando camina mueve sus caderas con seducción ;). Es un pokémon que le encanta moverse y bailar con gracia.<Vive en el ártico con Santa Klauz ;)"),
    CartItem(id:19, Strength: 300, Image: 'assets/blobs/Hypno.png', Name:"Hypno", Type: "Tipo: Psíquico", Attacks: "Ataques: Confusión, Rayo psíquico.", Description: "Reseña: Pokémon humanoide psíquico, anda con un péndulo y en muchos casos no puede controlar su hipnotismo."),
    CartItem(id:20, Strength: 250, Image: 'assets/blobs/Drowzee.png', Name:"Drowzee", Type: "Tipo: Psíquico", Attacks: "Ataques: Confusión, Rayo psíquico.", Description: "Reseña: Lagarto humanoide psíquico con buen humor, es un pokémon sensitivo."),
    CartItem(id:31, Strength: 400, Image: 'assets/blobs/Exeggutor.png', Name:"Exeggutor", Type: "Tipo: Psíquico, Hierba", Attacks: "Ataques: Ataque psíquico, Rayo psíquico, Esporas", Description: "Reseña: Pokémon con apariencia de palmera y tres cabezas. Suele vivir en junglas o bosques del trópico. Son organizados y viven en tribus. Cada una de sus cabezas tiene su propia personalidad."),
    CartItem(id:32, Strength: 220, Image: 'assets/blobs/Exegcute.png', Name:"Exeggcute", Type: "Tipo: Psíquico, Hierba", Attacks: "Ataques: Ataque Psíquico, Esporas", Description: "Reseña: Son 6 huevos que nunca se separan, son un solo pokémon. Tienen poderes psíquicos de gran ratio."),
    CartItem(id:34, Strength: 100, Image: 'assets/blobs/Togepi.png', Name:"Togepi", Type: "Tipo: Psíquico", Attacks: "Ataques: ", Description: "Reseña: El pokémon huevo. Es realmente raro ver uno. Se dice que el tener uno, aunque este no haya salido del cascarón, traerá puros buenos augurios, paz y prosperidad. Cuando Togepi rompe su cascarón nunca lo abandona. No se sabe si tiene relación con sus poderes psíquicos, pero estos son de un nivel superdotado, aunque pocas veces utilizados."),
    CartItem(id:36, Strength: 30, Image: 'assets/blobs/Wobbuffet.png', Name:"Wobbuffet", Type: "Tipo: Psíquico", Attacks: "Ataques: Metrónomo", Description: "Reseña: Es un pokémon con pocas capacidades de batalla, sin embargo, tiene poderes psíquicos de gran ratio, los cuales generalmente no sabe controlar."),
    CartItem(id:52, Strength: 200, Image: 'assets/blobs/Slowking.png', Name:"Slowking", Type: "Tipo: Agua, Psíquico", Attacks: "Ataques: Hidrobomba, Confusión, Hiperrayo", Description: "Reseña: Evoluciona cuando estando con una roca del rey y Shellder le muerde la cola. Nadie ha identificado la raíz de como se genera su evolución. Pero se cree que es un acuerdo que hacen ambos pokémon para ganar equilibrio y poder movilizarse fuera del mar. Aunque la inteligencia de Slowpoke crece considerablemente con su evolución. Es una de las dos posibles evoluciones de Slowpoke"),
    CartItem(id:53, Strength: 180, Image: 'assets/blobs/Slowbro.png', Name:"Slowbro", Type: "Tipo: Agua, Psíquico", Attacks: "Ataques: Hidrobomba, Confusión, Hiperrayo", Description: "Reseña: Evoluciona cuando Shellder le muerde la cola. Nadie ha identificado la raíz de como se genera su evolución. Pero se cree que es un acuerdo que hacen ambos pokémon para ganar equilibrio y poder movilizarse fuera del mar. Aunque la inteligencia de Slowpoke crece considerablemente con su evolución. Es una de las dos posibles evoluciones de Slowpoke"),
    CartItem(id:54, Strength: 300, Image: 'assets/blobs/Lapras.png', Name:"Lapras", Type: "Tipo: Agua, Hielo", Attacks: "Ataques: Hiperrayo, Rayo de Hielo, Hidrobomba, Telepatía", Description: "Reseña: Este pokémon está basado en un plesiosauro. Es un pokémon extremadamente fuerte pero muy difícil de avistar. Generalmente viven en el ártico."),
    CartItem(id:57, Strength: 250, Image: 'assets/blobs/Golduck.png', Name:"Golduck", Type: "Tipo: Agua, Psíquico", Attacks: "Confusión, Pistola de Agua, Hidrobomba, Rayo hielo, Ataque psíquico", Description: "Reseña: El pokémon pokémon pato. La evolución de psydock.Es un pokémon elegante y extremadamente fuerte y superdotado. Su debilidad son las bellas mujeres."),
    CartItem(id:58, Strength: 100, Image: 'assets/blobs/Psyduck.png', Name:"Psyduck", Type: "Tipo: Agua, Psíquico", Attacks: "", Description: "Reseña: El pokémon pato. Es un pokémon extremadamente fuerte en lo que poderes psíquicos trata. Sin embargo su personalidad es algo distraida por lo que generalmente no sabe usarlos al 100%.."),
    CartItem(id:105, Strength: 300, Image: 'assets/blobs/Mr.Mime.png', Name:"Mr. Mime", Type: "Tipo: Psíquico", Attacks: "Ataques: Pantomima, Confusión, Psicorrayo, Cabezazo Zen, Retribución", Description: "Reseña: El pokémon mimo. Capaz de crear poderosas barreras e incluso usarlas como ataques. Es un pokémon tranquilo y a menudo es visto viviendo en sociedad."),
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