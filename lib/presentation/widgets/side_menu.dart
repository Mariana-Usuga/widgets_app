import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuItems[value];
          context.push(menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
            //child: const Text('Main'),
          ),
          ...appMenuItems.sublist(0, 3).map(
                (item) => NavigationDrawerDestination(
                  icon: Icon(item.icon),
                  label: Text(item.title),
                ),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('More options'),
          ),
          ...appMenuItems.sublist(3).map(
                (item) => NavigationDrawerDestination(
                  icon: Icon(item.icon),
                  label: Text(item.title),
                ),
              ),
        ]);
  }
}
/**  
 * void ejemploFuncion(int a, int b, int c) {
  print('a: $a, b: $b, c: $c');
}

List<int> lista = [1, 2, 3];

ejemploFuncion(...lista);

sin : ejemploFuncion(lista[0], lista[1], lista[2]);





final List<MenuItem> firstThreeMenuItems = appMenuItems.sublist(0, 3);
for (final item in firstThreeMenuItems) {
  // ... tu lógica aquí ...
}
El operador ... se llama el "operador de propagación" o "operador 
de spread" en Dart. Este operador se utiliza para desempaquetar los 
elementos de una lista o un objeto iterable y agregarlos como elementos
 individuales a otra lista o estructura de datos, o para pasar elementos
  de una lista como argumentos separados a una función que espera 
  múltiples argumentos.
 */