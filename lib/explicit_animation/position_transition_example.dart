import 'package:flutter/material.dart';

class PositionTransitionExample extends StatefulWidget {
  const PositionTransitionExample({super.key});

  @override
  State<PositionTransitionExample> createState() => _PositionTransitionExampleState();
}

class _PositionTransitionExampleState extends State<PositionTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));

    _jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(250, 259, 0, 0),
    ).animate(_controller);

    _tomAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_controller);

    _spikeAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(_controller);
  }

  void _startAnimation(){
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation(){
    _controller.reverse();
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
        title: const Text('Positioned Transition Example'),
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: _spikeAnimation,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
                child: Image.asset("images/dog.png"),
              )),
          PositionedTransition(
              rect: _tomAnimation,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.grey,
                child: Image.asset("images/tom.png"),
              )),
          PositionedTransition(
              rect: _jerryAnimation,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: Image.asset("images/jerry.png"),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: _startAnimation,
                  icon: const Icon(Icons.start),
                ),
                IconButton(
                  onPressed:  _reverseAnimation,
                  icon: const Icon(Icons.close),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
