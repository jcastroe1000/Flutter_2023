import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/counter_functions_screen.dart';
//import 'presentation/screens/counter_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green
      ),
      home:  const CounterFunctionsScreen()
    );
  }
}