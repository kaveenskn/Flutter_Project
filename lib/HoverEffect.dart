import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: HoverButton(),
        ),
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  const HoverButton({super.key});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isHovered ? Colors.blue[700] : Colors.blue,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isHovered
              ? [BoxShadow(color: Colors.blue.withOpacity(0.4), blurRadius: 10)]
              : [],
        ),
        child: Text(
          "Hover Me",
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
