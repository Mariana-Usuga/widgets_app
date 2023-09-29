import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/counter_provider.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';

  const CounterScreen({super.key});

  Widget build(BuildContext context, WidgetRef ref) {
    final int value = ref.watch(counterProvider);
    final bool theme = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          IconButton(
              onPressed: () {
                //ref.read(isDarkmodeProvider.notifier).state = !theme;

                ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              },
              icon: Icon(
                  theme ? Icons.dark_mode_outlined : Icons.light_mode_outlined))
        ],
      ),
      body: Center(
          child: Text(
        'valor: $value',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
