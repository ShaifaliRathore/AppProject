import 'package:flutter/material.dart';
import 'dart:async';

/*class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFf45d27),
                  Color(0xFFf5851f),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/Icon1.png'),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
                        child: Text(
                          'Indian Institute of Travel and Tourism Management (IITTM)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                    ],
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/

class AnimatedLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo> {
  Timer _timer;

  _AnimatedLogoState() {
    _timer = Timer(const Duration(milliseconds: 400), () {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/Icon1.png'),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
                        child: Text(
                          'Indian Institute of Travel and Tourism Management (IITTM)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
