import 'package:flutter/material.dart';

class Phase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print('Avanzar de fase');
        },
        child: Text('Press me'),
      ),
    );
  }
}