abstract class Pokemons {
  void pokemon ()=> print ("Análisis de Poderes por Afinidad");
}

abstract class Thunder extends Pokemons {}
abstract class Rock extends Pokemons {}
abstract class Fight extends Pokemons {}


mixin Walker {
  void caminante () => print ('Hitmonlee: A bocajarro | Electabuzz: Puño eléctrico');
}

mixin Walker1 {
  void caminante1 () => print ('Electabuzz: Golpe eléctrico | Hitmonlee: Demolición \nHitmonlee: Golpe Roca | Electabuzz: Tormenta Eléctrica');
}



class Hitmonlee extends Fight with Walker {}
class Electabuzz extends Thunder with Walker1 {}

  void main (){
    final hitmonlee = Hitmonlee();
    hitmonlee.caminante();
    final electabuzz = Electabuzz();
    electabuzz.caminante1();

  
  }
