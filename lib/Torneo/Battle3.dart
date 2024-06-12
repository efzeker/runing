//GENÉRICO
abstract class Pokemons {
  void pokemon() => print('Analisis --Descendencias según afinidad'); //void crea un método (van con minúscula), class crea una clase (va con mayúscula)
}


//CLASES PADRES
abstract class Ghost extends Pokemons{}
abstract class Psychic extends Pokemons{}
abstract class Herb extends Pokemons{}



//CLASE HIJAS (Luego se Analiza con Pokémons)
mixin Flight {
  void volador () => print ('HAUNTER: Desdoblamiento | Exeggutor: Hibernación');
}

mixin Walker {
  void caminante () => print ('Exeggutor:  Explosión | Haunter: Impacto fantasma \nExeggutor: Rayo Solar | Haunter: Bola Sombra');
}

mixin Mind {
  void nadador () => print ('Haunter: Confusión| Exeggutor: Rayo Psíquico');
}



class Haunter extends Ghost with Flight {}
class Exeggutor extends Herb with Walker, Mind {}


  void main (){
    final haunter = Haunter();
    haunter.volador();
    final exeggutor = Exeggutor();
    exeggutor.caminante();
    exeggutor.nadador();
  }
  