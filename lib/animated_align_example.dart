import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {

  int _jerryAlign = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlignExample'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAlign + 1),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("images/tom.jpeg"),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAlign),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("images/jerry.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _jerryAlign = _jerryAlign + 1;
          });
        },
        child: const Icon(Icons.chair_alt),
      ),
    );
  }

  Alignment getNextAlignment(int align){
    switch(align){
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topLeft;
      case 3:
        return Alignment.topRight;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.centerLeft;
      case 7:
        return Alignment.bottomRight;
      case 8:
        return Alignment.bottomLeft;
      default:
        _jerryAlign = 0;
        return Alignment.bottomCenter;
    }

  }
}
