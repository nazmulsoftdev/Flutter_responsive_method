import 'package:app5/Responsive/FittedBox/fittedBox.dart';
import 'package:app5/Responsive/FractionallySizedBox/fractionallySizedBox.dart';
import 'package:app5/Responsive/LayoutBuilder/layoutBuilder.dart';
import 'package:flutter/material.dart';
import 'Responsive/AspectRatio/aspectRatio.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const layoutBuilder(),
    );
  }
}
