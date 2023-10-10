import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: const Text(
                  'Tom and Jerry',
                  style: TextStyle(fontSize: 44.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.transparent,
                  child: Image.asset("images/jerry.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                curve: Curves.easeInCirc,
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.transparent,
                  child: Image.asset("images/tom.png"),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}
