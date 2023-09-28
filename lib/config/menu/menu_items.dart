import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Animacion',
      subTitle: 'Un contenedor estilizado',
      link: '/animated',
      icon: Icons.credit_card),
  MenuItem(
      title: 'App tutorial',
      subTitle: 'Un contenedor estilizado',
      link: '/tutorial',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Infinite scroll',
      subTitle: 'Un contenedor estilizado',
      link: '/infinite',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_outlined),
  MenuItem(
      title: 'snackbar y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ui_controls',
      subTitle: 'Un contenedor estilizado',
      link: '/ui_controls',
      icon: Icons.credit_card),
];
