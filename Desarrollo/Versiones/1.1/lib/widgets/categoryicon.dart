import 'package:dif/helpers/DIFIcons.dart';
import 'package:flutter/material.dart';
import 'iconfont.dart';

class CategoryIcon extends StatelessWidget{
  Color color;
  IconData iconName;
  double size;
  double padding;

  CategoryIcon({
    required this.color,
    this.iconName = DIFIcons.education,
    this.size = 30,
    this.padding = 10
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          color: this.color,
          padding: EdgeInsets.all(this.padding),
          child: IconFont(
              color: Colors.white,
              iconName: this.iconName,
              size: this.size
          )
      ),
    );
  }
}