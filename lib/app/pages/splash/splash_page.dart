import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/animated_logo_widget.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this, 
      duration: Duration(seconds: 1)
    );

    animation = Tween<double>(begin: 0, end: 300).animate(animationController);

    animationController.forward();

    Future.delayed(Duration(seconds: 1)).then((v) {
      Modular.to.pushReplacementNamed('/login');
    });
  }
  
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedLogo(animation);
  }
}
