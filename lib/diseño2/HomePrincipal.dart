// import 'package:flutter/material.dart';

// class HomePrincipal extends StatelessWidget {
//   const HomePrincipal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Tienda",
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Navegacion con tabs"),
//           centerTitle: true,
//           backgroundColor: Colors.amber[700],
//           foregroundColor: Colors.white,
//           leading: Row(
//             children: opciones.map((opcion) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: Column(
//                   children: [
//                     Icon(opcion["icono"]),
//                     Text(opcion["titulo"]),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//         backgroundColor: Colors.white,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';


class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tienda",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          title: const Text("Navegacion con tabs"),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          foregroundColor: Colors.white,
          leading: Row(
            children: opciones.map((opcion) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Icon(opcion["icono"]),
                    Text(opcion["titulo"]),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        backgroundColor: Colors.green[50],

      ),
    );
  }
}


List opciones = [
  {
    'codigo': '001',
    'titulo': 'Notas',
    'icono': Icons.note,
  },
  {
    'codigo': '002',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '003',
    'titulo': 'Profesores',
    'icono': Icons.people,
  },
];