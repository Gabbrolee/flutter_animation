import 'package:flutter/material.dart';

class AnimatedPositionDirectionalExample extends StatefulWidget {
  const AnimatedPositionDirectionalExample({super.key});

  @override
  State<AnimatedPositionDirectionalExample> createState() => _AnimatedPositionDirectionalExampleState();
}

class _AnimatedPositionDirectionalExampleState extends State<AnimatedPositionDirectionalExample> {
  double _left = 0;
  double _start = 0;
  double _top = 0;

  _moveLeft(){
    setState(() {
      _start -= 50;
      if(_start < 0){
        _start = 0;
      }
    });
  }

  _moveRight(){
    setState(() {
      _start += 50;
      if(_start > MediaQuery.of(context).size.width - 100){
        _start = 0;
      }
    });
  }

  _moveUp(){
    setState(() {
      _top -= 50;
      if(_top < 0){
        _top = 0;
      }
    });
  }

  _moveDown(){
    setState(() {
      _top += 50;
      if(_top > MediaQuery.of(context).size.height - 100){
        _top = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Position Directional"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
                top: _top,
                start: _start,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.transparent,
                  child: Image.asset("images/jerry.png"),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _moveLeft,
                    child: const Icon(Icons.arrow_circle_left_outlined),
                  ),
                  ElevatedButton(
                    onPressed: _moveRight,
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                  ElevatedButton(
                    onPressed: _moveUp,
                    child: const Icon(Icons.arrow_circle_up_outlined),
                  ),
                  ElevatedButton(
                    onPressed: _moveDown,
                    child: const Icon(Icons.arrow_circle_down_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
