import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Cargando Películas',
      'Explorando el Mundo Cinematográfico',
      'Accediendo al Catálogo de Películas más Extenso',
      'Descubriendo Joyas Cinematográficas',
      'La Magia de Hollywood a tu Alcance',
      'Navegando por la Historia del Cine',
      'Esto Esta Tardando mas de lo Esperado 😢'
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere Por Favor'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(strokeWidth: 2),
          const SizedBox(height: 10),
          StreamBuilder(
              stream: getLoadingMessages(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Text('Cargando....');
                return Text(snapshot.data!);
              })
        ],
      ),
    );
  }
}
