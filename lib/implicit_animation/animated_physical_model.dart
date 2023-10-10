import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;

  _toggleElevation() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Physical Model Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _toggleElevation(),
          child: AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isPressed ? 90 : 0,
            color: Colors.grey,
            shadowColor: Colors.blueGrey,
            duration: const Duration(milliseconds: 400),
            curve: Curves.bounceIn,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('images/tom.png'),
            ),
          ),
        ),
      ),
    );
  }
}
