import 'package:flutter/material.dart';
import 'package:playground/intro.dart';
import 'package:rxdart/rxdart.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Observable.timer(null, Duration(seconds: 3)).listen((data) => null,
        onDone: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image:
                        new AssetImage("assets/images/splash_bg_pattern.png"),
                    alignment: Alignment.bottomRight),
                color: Color(0xff4f42e9)),
            child: Center(
              child: Image.asset(
                "assets/images/splash_logo.png",
                width: 200,
                height: 200,
              ),
            )));
  }
}
