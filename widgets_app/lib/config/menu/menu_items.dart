import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'Progress Indicator',
    subTitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBars',
    subTitle: 'Snack bars',
    link: '/snackBar',
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: 'Ui controls',
    subTitle: 'Ui controls',
    link: '/ui-controls',
    icon: Icons.card_membership_rounded,
  ),
  MenuItems(
    title: 'App Tutorial',
    subTitle: 'App tutorial',
    link: '/appTutorial',
    icon: Icons.remove_red_eye_outlined,
  ),
  MenuItems(
    title: 'Infinite Scroll y pull',
    subTitle: 'Infinite Scroll',
    link: '/infiniteScroll',
    icon: Icons.screen_rotation_sharp,
  ),
];
