import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cards'),
      ),
      body: Placeholder(),
    );
  }
}
