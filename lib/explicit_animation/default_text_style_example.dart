import 'package:flutter/material.dart';

class DefaultTextStyleTransitionExample extends StatefulWidget {
  const DefaultTextStyleTransitionExample({super.key});

  @override
  State<DefaultTextStyleTransitionExample> createState() => _DefaultTextStyleTransitionExampleState();
}

class _DefaultTextStyleTransitionExampleState extends State<DefaultTextStyleTransitionExample>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final TextStyle _style1 =  const  TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold);
  final TextStyle _style2 = const TextStyle(fontSize: 36, color: Colors.red, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Text Style Transition Example"),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _animation.drive(TextStyleTween(begin: _style1, end: _style2)),
          child: const Text("Hello Mina"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_controller.status == AnimationStatus.completed){
            _controller.reverse();
          }else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
