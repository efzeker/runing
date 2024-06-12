//GENÉRICO
abstract class Pokemons {
  void pokemon() => print('Analisis --Descendencias según afinidad'); //void crea un método (van con minúscula), class crea una clase (va con mayúscula)
}


//CLASES PADRES
abstract class Fire extends Pokemons{}



//CLASE HIJAS (Luego se Analiza con Pokémons)
mixin Flight {
  void volador () => print ('Charizard: Movimiento Sismico');
}

mixin Walker {
  void caminante () => print ('Magmar + Charizard: Llamarada \n push&pull');
}

mixin Diving {
  void nadador () => print ('Magmar: Golpe Fuego');
}



class Charizard extends Fire with Flight, Walker {}
class Magmar extends Fire with Diving, Walker {}

  void main (){
    final charizard = Charizard();
    charizard.caminante();
    final magmar = Magmar();
    magmar.nadador();
    charizard.volador();
  }
  

















//CLASES NIETAS
//    abstract class humanoide extends Pokemons{
//      void Humanoide() => print('Descendencia --Humanoide');
//    }

//    abstract class cuatripedo extends Pokemons{
//      void Cuatripedo() => print('Descendencia --Cuatripedo');
//    }

//    abstract class dragon extends Pokemons {
//      void Dragon() => print('Descendencia --Dragon');
//    }


