import 'package:flutter/material.dart';

class FullLoader extends StatelessWidget {
  const FullLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Cargando Listado ',
      'Espera ya casi terminamos',
      'Obteniendo peliculas',
    ];
    return Stream.periodic(Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cargando'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 10),
          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Text('Cargando');
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
