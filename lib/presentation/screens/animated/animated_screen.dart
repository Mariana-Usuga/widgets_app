import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('hi')));
  }
}
