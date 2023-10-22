import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() => _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState extends State<TweenAnimationBuilderExample> {
  double _opacityLevel = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation Builder Example"),
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: _opacityLevel),
                duration: const Duration(milliseconds: 900),
                builder: (BuildContext context, double value, child) {
                  return Opacity(
                    opacity: value,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(76 * value * _opacityLevel),
                      ),
                    ),
                  );
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacityLevel = _opacityLevel == 0 ? 1 : 0;
                    });
                  },
                  child: const Text("Animate!!"))
            ],
          ),
        ),
      ),
    );
  }
}
