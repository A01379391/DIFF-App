import 'package:dif/models/loginusermodel.dart';
import 'package:dif/services/loginservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfileHeader extends StatelessWidget {

  bool showProfilePic;

  UserProfileHeader({
    required this.showProfilePic
  });

  @override
  Widget build(BuildContext context) {

    LoginService loginService = Provider.of<LoginService>(context, listen: false);
    LoginUserModel? userModel = loginService.loggedInUserModel;

    String? imgPath = userModel != null ? userModel.photoUrl : '';

    return this.showProfilePic && imgPath!.length > 0 ?
      Container(
        margin: EdgeInsets.only(right: 12),
        child: ClipOval(
          child: Image.network(imgPath),
        ),
      ): SizedBox(width: 40, height: 40);
  }
}