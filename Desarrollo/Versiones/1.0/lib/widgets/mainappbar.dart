import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:flutter/material.dart';

import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color themeColor;

  MainAppBar({ this.themeColor = AppColors.LogoDIF });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: IconFont(
          iconName: DIFIcons.dif,
          color: widget.themeColor,
          size: 90,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: widget.themeColor),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            child: ClipOval(
              child: Image.asset('assets/images/Shiryto.png'),
            ),
          )
        ],
        centerTitle: true
    );
  }
}