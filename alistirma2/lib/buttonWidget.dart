import 'package:flutter/material.dart';

class ButtonOrnekleri extends StatelessWidget {
  const ButtonOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextButton(onPressed: () => {debugPrint('Tıklandı')}  , child: const Text('deneme')),
        TextButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.add),
            label: const Text('Product Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
              iconColor: Colors.white,
            ),
            ),
        ElevatedButton(
            onPressed: () => {}, child: const Text('Elevated Button')
            ),
        ElevatedButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.access_alarm),
            label: const Text('alarm')
            ),
        OutlinedButton(
            onPressed: () => {}, child: const Text('Outline Button')
            ),
        OutlinedButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.access_time),
            label: const Text('Time')
            )
      ]),
    );
  }
}
