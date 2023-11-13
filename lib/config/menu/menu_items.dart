import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final List<String>? subItem;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      this.subItem});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Inicio',
      subTitle: 'Varios botones en flutter',
      link: '/start',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'Introducion a la app',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite scroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
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
      title: 'ui_controls + tiles',
      subTitle: 'Una serie de controler de Flutter',
      link: '/ui_controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Counter screen',
      subTitle: 'sumandi numero',
      link: '/counter',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
