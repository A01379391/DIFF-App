import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:dif/widgets/userprofileheader.dart';
import 'package:flutter/material.dart';
import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color themeColor;
  bool showProfilePic;

  MainAppBar({
    this.themeColor = AppColors.LogoDIF,
    this.showProfilePic = true
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/categorylistpage');
          },
          child: Center(
            child: IconFont(
              iconName: DIFIcons.dif,
              color: widget.themeColor,
              size: 90,
            ),
          )
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: widget.themeColor),
        actions: [
          UserProfileHeader(
              showProfilePic: widget.showProfilePic
          )
        ],
        centerTitle: true
    );
  }
}