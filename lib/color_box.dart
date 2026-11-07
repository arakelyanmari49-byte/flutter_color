import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ColorBox()));

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  final _colors = [Colors.red, Colors.blue, Colors.green];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => _index = (_index + 1) % _colors.length),
          child: Container(
            width: 200,
            height: 200,
            color: _colors[_index],
          ),
        ),
      ),
    );
  }
}
