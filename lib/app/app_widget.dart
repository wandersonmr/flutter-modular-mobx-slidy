import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(241,132,14, 1),
        accentColor: Color.fromRGBO(255,196,10, 1),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
