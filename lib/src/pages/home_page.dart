import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> localImages = [
  'assets/Enciclopedia.png',
  'assets/Encarta.png',

  'assets/Poisson.png',
  'assets/Fight.png',
  'assets/Grass.png',
  'assets/water.png',
  
  'assets/Ice.png',
  'assets/Flight.png',
  'assets/Psychic.png',
  'assets/Bug.png',
  
  'assets/Normal.png',
  'assets/Fairy.png',
  'assets/Rock.png',
  'assets/Insect.png',

  'assets/Fósil.png',
  'assets/Thunder.png',
  'assets/Steel.png',
  'assets/Fire.png',
  
  'assets/Ground.png',
  'assets/Ghost.png',
  'assets/Dragon.png',
  'assets/Siniestro.png',
  
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dexter Lab'),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: localImages.length,
          itemBuilder: (BuildContext context, int index) => ClipRRect(
            //borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.green,
              child: Image.asset(
                localImages[index],
                fit: BoxFit.fill,
              ),
            ),
          ),
          staggeredTileBuilder: (index) {
            if (index == 0 || index == 1) {
              // Para los widgets 0 y 1, crea un tile que se expanda a lo largo de toda la fila
              return const StaggeredTile.count(4, 1);
            } else {
              // Para los demás widgets, crea un tile cuadrado
              return const StaggeredTile.count(1, 1);
            }
          },
        ),
      ),
    );
  }
}