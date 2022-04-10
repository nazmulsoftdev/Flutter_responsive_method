import 'package:flutter/material.dart';

class aspectRatio extends StatelessWidget {
  const aspectRatio({Key? key}) : super(key: key);

  /*
    AspectRatio is a responsive method
    it will divided your screen by ==> screen height
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              color: Colors.redAccent,
            ),
          ),
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          AspectRatio(
            aspectRatio: 3,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}
