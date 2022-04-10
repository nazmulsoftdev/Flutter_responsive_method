import 'package:flutter/material.dart';

class fractionallySizedBox extends StatelessWidget {
  const fractionallySizedBox({Key? key}) : super(key: key);

  /*
    FractionallySizedBox is a responsive method
    it will cover your Container inside child container height and width  perfectly
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.blueGrey,
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.8,
              child: Container(
                color: Colors.redAccent,
              ),
            ),
          )
        ],
      )),
    );
  }
}
