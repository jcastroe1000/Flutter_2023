import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackBar_screen';
  const SnackBarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: "ok", onPressed: () {}),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estas Seguro'),
        content: Text(
          'Enim dolore quis sunt anim proident dolore aliquip nulla mollit officia aliqua fugiat est. Irure sunt quis et consectetur amet velit pariatur reprehenderit consequat proident commodo. Nulla consectetur voluptate proident dolore esse non officia est irure qui. Anim nulla Lorem deserunt occaecat minim non nostrud sit eiusmod et nostrud ut.',
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snack Bar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Deserunt reprehenderit proident ipsum nisi minim ut ut.',
                    ),
                  ],
                );
              },
              child: Text('Licencias Usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Dialogo de Pantalla'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),

        icon: Icon(Icons.remove_red_eye),
        label: Text('Mostrar SnackBar'),
      ),
    );
  }
}
