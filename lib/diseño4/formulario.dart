import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),

              const Text(
                'Formulario Registro',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre completo',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Telefono',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                  ),
                  const Text('Recordarme'),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    flex: 1, 
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        foregroundColor: MaterialStateProperty.all(Colors.purple[900]),
                      ),
                      child: const Text('Registrar'),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  Expanded(
                    flex: 1, // Este botón ocupará la mitad de espacio que el primero
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        foregroundColor: MaterialStateProperty.all(Colors.blue[600]),
                      ),
                      child: const Text('Cancelar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
