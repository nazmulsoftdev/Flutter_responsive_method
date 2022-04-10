import 'package:flutter/material.dart';

class fittedBox extends StatelessWidget {
  const fittedBox({Key? key}) : super(key: key);

  /*
    FittedBox is a responsive method
    it will cover your screen widget width  perfectly
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.blueGrey,
              child: FittedBox(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 300,
                      color: Colors.redAccent,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1,
                      height: 300,
                      color: Colors.purpleAccent,
                    )
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    color: Colors.cyan,
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.orange,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
