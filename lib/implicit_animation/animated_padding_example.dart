import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  List<String> characters = ["tom", "jerry", "cheese", "dog"];
  double _paddingValue = 10.0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding Example"),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return AnimatedPadding(
                  padding: EdgeInsets.all(_paddingValue),
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.decelerate,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Image.asset("images/${characters[index]}.png"),
                  ),
              );
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _isExpanded = !_isExpanded;
            _paddingValue = _isExpanded ? 30.0 : 10;
          });
        },
        child: Icon(_isExpanded ? Icons.expand : Icons.expand_less),
      ),
    );
  }
}
