import 'package:dif/helpers/appcolors.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {

  String label;
  double fontSize;
  double padding;
  Function onClick;
  Color color;
  Color highlight;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({
    required this.label,
    this.fontSize = 16,
    this.padding = 15,
    this.labelColor = Colors.white,
    this.color = AppColors.Education,
    this.highlight = AppColors.Education,
    this.borderColor = Colors.transparent,
    this.borderWidth = 4,
    required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
              color: this.color,
              child: InkWell(
                splashColor: this.highlight,
                highlightColor: this.highlight,
                onTap: () {
                  this.onClick();
                },
                child: Container(
                  padding: EdgeInsets.all(this.padding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.transparent,
                      border: Border.all(
                          color: this.borderColor,
                          width: 4
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [//icon
                      SizedBox(width: 10),
                      Text(this.label,
                        style: TextStyle(
                          fontSize: this.fontSize,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold)),
                  ],
                )
                ),
              )
          )
      )
    );
  }
}