// custom_buttons.dart
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        // Elevated Button
        ElevatedButton(
          onPressed: () {
            print('Elevated Button Pressed');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Elevated'),
        ),

        const SizedBox(height: 10),

        // Text Button
        TextButton(
          onPressed: () {
            print('Text Button Pressed');
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          child: const Text('Text Button'),
        ),

        const SizedBox(height: 10),

        // Outlined Button
        OutlinedButton(
          onPressed: () {
            print('Outlined Button Pressed');
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.deepPurple, width: 2),
            foregroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(12),
            shape: const StadiumBorder(),
          ),
          child: const Text('Outlined'),
        ),

        const SizedBox(height: 10),

        // Icon Button
        IconButton(
          onPressed: () {
            print('Icon Button Clicked');
          },
          icon: const Icon(Icons.thumb_up),
          color: Colors.pink,
          iconSize: 30,
        ),

        const SizedBox(height: 10),

        // ElevatedButton with Icon
        ElevatedButton.icon(
          onPressed: () {
            print('Button with Icon');
          },
          icon: const Icon(Icons.send),
          label: const Text('Send'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ),

        const SizedBox(height: 10),

        // Custom InkWell Button
        InkWell(
          onTap: () {
            print('Custom InkWell Button');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Custom Button',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),

      ],
    );
  }
}
