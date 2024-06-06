import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
  
          title: Text('Navegacion con taps'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    // Acción al presionar el icono de inicio
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    // Acción al presionar el icono de favoritos
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                
                  onPressed: () {
                    // Acción al presionar el icono de perfil
                  },
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Text('Pestañas'),
        ),
      ),
    );
  }
}