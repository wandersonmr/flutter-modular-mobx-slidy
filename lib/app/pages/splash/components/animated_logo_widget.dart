
import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo(Animation<double> animation) : super(listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          child: Image(image: AssetImage('images/logo.png')),
        ),
      ),
    );
  }
}