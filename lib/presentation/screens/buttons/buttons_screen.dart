import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 6,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated disable')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Elevated Icon'),
              ),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_sharp),
                  label: const Text('Filled icon')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time_outlined),
                  label: const Text('Outline Icon')),
              TextButton(onPressed: () {}, child: const Text('TextBtn')),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
                label: const Text('TextIcon'),
              ),
              const CustomButton(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.zoom_out_map)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.zoom_out_map),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white),
                  ))
            ],
          )),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hola mundo',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
