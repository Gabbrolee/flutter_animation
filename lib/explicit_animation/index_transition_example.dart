import 'package:flutter/material.dart';

class IndexedTransitionExample extends StatefulWidget {
  const IndexedTransitionExample({super.key});

  @override
  State<IndexedTransitionExample> createState() => _IndexedTransitionExampleState();
}

class _IndexedTransitionExampleState extends State<IndexedTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    _opacityAnimation = Tween<double>(begin: 0, end: 1.0).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack Transition Example"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Image.asset("images/jerry.png"),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Image.asset("images/dog.png"),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Image.asset("images/tom.png"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNextScreen,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  void _goToNextScreen(){
    _currentIndex = _currentIndex + 1;
    if(_currentIndex == 3){
      _currentIndex = 0;
    }
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }
}
