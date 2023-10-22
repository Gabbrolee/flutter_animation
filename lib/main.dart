import 'package:flutter/material.dart';
import 'package:implicit_animation_practice/implicit_animation/animated_cross_fade_example.dart';
import 'package:implicit_animation_practice/implicit_animation/animated_physical_model.dart';
import 'package:implicit_animation_practice/implicit_animation/animated_position_directional.dart';
import 'package:implicit_animation_practice/implicit_animation/animated_text_size_example.dart';
import 'package:implicit_animation_practice/more_transition/custom_painter_example.dart';
import 'package:implicit_animation_practice/page_transition/page_fade_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_mix_scale_rotate_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_mix_size_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_rotate_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_scale_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_size_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_slide_transition.dart';
import 'package:implicit_animation_practice/page_transition/page_two.dart';

import 'explicit_animation/animated_builder_example.dart';
import 'explicit_animation/default_text_style_example.dart';
import 'explicit_animation/fade_transition_example.dart';
import 'explicit_animation/index_transition_example.dart';
import 'explicit_animation/position_directional_transition_example.dart';
import 'explicit_animation/position_transition_example.dart';
import 'explicit_animation/rotation_transition_example.dart';
import 'explicit_animation/size_transition_example.dart';
import 'explicit_animation/tween_animation_builder_example.dart';
import 'implicit_animation/animated_align_example.dart';
import 'implicit_animation/animated_container_example.dart';
import 'implicit_animation/animated_list_example.dart';
import 'implicit_animation/animated_opacity_example.dart';
import 'implicit_animation/animated_padding_example.dart';
import 'implicit_animation/animated_position_example.dart';
import 'implicit_animation/animated_switcher_example.dart';
import 'more_transition/lottie_slider_example.dart';
import 'more_transition/rive_slider_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Course',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animation Course"),
        ),
        body: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedAlignExample()));
                  },
                  child: const Text("Animated Align Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedContainerExample()));
                  },
                  child: const Text("Animated Container Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedTextSizeExample()));
                  },
                  child: const Text("Animated Text Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedOpacityExample()));
                  },
                  child: const Text("Animated Opacity Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedPaddingExample()));
                  },
                  child: const Text("Animated Padding Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const AnimatedPhysicalModelExample()));
                  },
                  child: const Text("Animated Physical Model")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedPositionExample()));
                  },
                  child: const Text("Animated Position Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const AnimatedPositionDirectionalExample()));
                  },
                  child: const Text("Animated Position Directional Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedCrossFadeExample()));
                  },
                  child: const Text("Animated Cross Fade Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedSwitcherExample()));
                  },
                  child: const Text("Animated Switcher Example")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedListExample()));
                  },
                  child: const Text("Animated List Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PositionTransitionExample()));
                  },
                  child: const Text("Position Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SizeTransitionExample()));
                  },
                  child: const Text("Size Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RotationTransitionExample()));
                  },
                  child: const Text("Rotation Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedBuilderExample()));
                  },
                  child: const Text("Animated Builder Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FadeTransitionExample()));
                  },
                  child: const Text("Fade Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const PositionDirectionalTransitionExample()));
                  },
                  child: const Text("Position Directional Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const TweenAnimationBuilderExample()));
                  },
                  child: const Text("Tween Animation Builder Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const DefaultTextStyleTransitionExample()));
                  },
                  child: const Text("Default Text Style Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const IndexedTransitionExample()));
                  },
                  child: const Text("Indexed Transition Example")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageFadeTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageScaleTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Scale Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              //
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageRotateTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Rotate Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageSlideTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Slide Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(context, PageSizeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Size Transition",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageMixSizeFadeTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Mix Size Fade Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context, PageMixScaleRotateTransition(const PageTwo()));
                  },
                  child: const Text(
                    "Page Mix Size Rotate Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomPainterExample()));
                  },
                  child: const Text(
                    "Custom Painter Example Transition",
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LottieSliderExample()));
                },
                child: const Text(
                  "Lottie Slider",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RiveSliderExample()));
                },
                child: const Text(
                  "Rive Slider",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
