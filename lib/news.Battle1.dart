import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class Fire {}
//class Thunder {}
class Rock {}
//class Fight {}

//Magmar vs Charizard
mixin Flight {
  String volador () => 'Charizard: Movimiento Sismico';
}

mixin Walker {
  String caminante () => 'Magmar + Charizard: Llamarada \n push&pull';
}

mixin Diving {
  String nadador () => 'Magmar+Charizard:Lanzallama \nFire push&pull \nMagmar: Golpe Fuego \nFight push&pull \nFight push&pull \nMagmar: Tackle a lava \nCharizard: Movimiento Sismico \n \n¡CHARIZARD WIN!';
}

//Hitmonlee vs Electabuzz
mixin Walker1 {
  String caminante1 () => 'Hitmonlee: A bocajarro \nElectabuzz: Puño eléctrico \nElectabuzz: Golpe eléctrico \nHitmonlee: Demolición \nHitmonlee: Golpe Roca \nElectabuzz: Thunder Storm \n \n¡EMPTY!';
}

mixin Walker2 {
  String caminante2 () => 'Electabuzz: Golpe eléctrico \nHitmonlee: Demolición \nHitmonlee: Golpe Roca \nElectabuzz: Tormenta Eléctrica';
}

//class Charizard extends Fire with Flight, Walker {}
class Magmar extends Fire with Diving{}//, Walker {}

class Hitmonlee extends Rock with Walker1 {}
//class Electabuzz extends Thunder with Walker2 {}

// Crear instancias de las clases
//Charizard charizard = Charizard();
Magmar magmar = Magmar();
Hitmonlee hitmonlee = Hitmonlee();
//Electabuzz electabuzz = Electabuzz();

//List
List<Function> batallas = [

//BATTLE 1,
  //charizard.caminante,
  magmar.nadador,
  //charizard.volador,

//BATTLE 2,
  hitmonlee.caminante1,
  //electabuzz.caminante2,
  
//BATTLE 3,
];

class YoutubeVideo extends StatefulWidget {
  final String videoId;

  YoutubeVideo({required this.videoId});

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    final String videoID = 'PoZgG7ASAMo';// https://www.youtube.com/watch?v=PoZgG7ASAMo

    _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Monster Battle"),
          ) ,
          body: player,
        );
      },
    );
  }
}

class BattleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final charizard = Charizard();
    final magmar = Magmar();

    final hitmonlee = Hitmonlee();
    //final electabuzz = Electabuzz();

    return Scaffold(
      appBar: AppBar(
        title: Text('Kantō League News'),
      ),
      body: ListView.builder(
        itemCount: batallas.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      batallas[index](),
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YoutubeVideo(videoId: 'PoZgG7ASAMo')),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}