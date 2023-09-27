import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hi')),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(children: [
      SizedBox(height: 30),
      Text('circula progress indicator'),
      SizedBox(height: 10),
      CircularProgressIndicator(
        strokeWidth: 2,
        backgroundColor: Colors.black26,
      ),
      SizedBox(height: 20),
      Text('circula y lineal controlado'),
      SizedBox(height: 10),
      _ControlledProgressIndicator()
    ]));
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        print('value - ${value}');
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        print('object - ${progressValue}');

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black26,
              ),
              const SizedBox(width: 20),
              Expanded(
                  child: LinearProgressIndicator(
                value: progressValue,
              ))
            ],
          ),
        );
      },
    );
  }
}
