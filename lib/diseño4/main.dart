import 'package:flutter/material.dart';
import 'package:flutter_application_3/dise%C3%B1o4/formulario.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Principal(),
  ));
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Inicio de Sesión')),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.network(
              //   'https://senasofiaplus.xyz/wp-content/uploads/2023/10/logo-del-sena-01.png',
              //   height: 100,
              //   width: 100,
              // ),

              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espacio entre los inputs
              TextField(
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ()),
                  // );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15.0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 10), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Formulario()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15.0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text('Registrarse'),
              ),
              const SizedBox(height: 10), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15.0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text('¿Olvidó su contraseña?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



