import 'package:flutter/material.dart';

class IconFont extends StatelessWidget{
  Color color;
  double size;
  IconData iconName;

  IconFont({ required this.color, required this.size, required this.iconName});

  @override
  Widget build(BuildContext context){
    return Icon(
        this.iconName,
        color: this.color,
        size: this.size
    );
  }
}