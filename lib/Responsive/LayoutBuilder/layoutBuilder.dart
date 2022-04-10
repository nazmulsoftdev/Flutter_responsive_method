import 'package:flutter/material.dart';

class layoutBuilder extends StatelessWidget {
  const layoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (_, constraints) {
          if (constraints.maxWidth < 480) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.redAccent,
              child: Text("Hello 1"),
            );
          } else {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.yellow,
              child: Text("Hello 2"),
            );
          }
        }),
      ),
    );
  }
}
