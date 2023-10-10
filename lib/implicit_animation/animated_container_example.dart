import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  Color _color = Colors.grey;
  double _radius = 20;
  double _width = 150;
  double _height = 150;

  void _setAnimation() {
    setState(() {
      _color = Colors.orange;
      _radius = 90;
      _width = 400;
      _height = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _setAnimation(),
          child: AnimatedContainer(
            height: _height,
            width: _width,
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(color: _color, borderRadius: BorderRadius.circular(_radius)),
            child: Image.asset(
              "images/jerry.png",
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
             _color = Colors.grey;
             _radius = 20;
             _width = 150;
             _height = 150;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
