import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {
  static const name = 'home-screen';
  final Widget childView;
  const HomeScreeen({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}
