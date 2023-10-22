import 'package:flutter/material.dart';

class PageSizeTransition extends PageRouteBuilder {
  final dynamic page;
  PageSizeTransition(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.topCenter,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              );
            });
}
