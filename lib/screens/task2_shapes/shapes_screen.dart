import 'package:flutter/material.dart';
import 'dart:math';

Color randomColor() {
  // return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

class ShapesScreen extends StatefulWidget {
  // static const routename='/shapes';
  const ShapesScreen({super.key});

  @override
  State<ShapesScreen> createState() => _ShapesScreenState();
}

class _ShapesScreenState extends State<ShapesScreen> {
  late Color color;
  late double radius;
  late double size;
  // double height = -1 + (Random().nextDouble() * (1 - -1));
  // double width = -1 + (Random().nextDouble() * (1 - -1));

  double height =0;
  double width =0;

  @override
  initState() {
    super.initState();
    color = randomColor();
    radius = Random().nextDouble() * 100;
    size = Random().nextDouble() * 200;
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("implicit ainimation demo"),
        ),
        body: Align(
          alignment: Alignment(height, width),
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              color = randomColor();
              radius = Random().nextDouble() * 100;
              size = Random().nextDouble() * 200;
              height = -1 + Random().nextDouble() * 2;
              width = -1 + Random().nextDouble() * 2;
              // height =  -1 + (Random().nextDouble() * (1 - -1));
              // width =  -1 + (Random().nextDouble() * (1 - -1));
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
