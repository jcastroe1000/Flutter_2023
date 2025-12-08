import 'package:flutter/material.dart';

class CubitCounterScreens extends StatelessWidget {
  const CubitCounterScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter'),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.refresh_rounded)),
        ],
      ),
      body: Center(child: Text('Counter Value')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: Text('+3'),
            onPressed: () => {},
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2',
            child: Text('+2'),
            onPressed: () => {},
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: Text('+1'),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
