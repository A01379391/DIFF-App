import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:dif/services/loginservice.dart';
import 'package:dif/widgets/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    LoginService loginService = Provider.of<LoginService>(context, listen: false);
    bool userLoggedIn = loginService.loggedInUserModel != null;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: AppColors.LogoDIF,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () async {
                if(userLoggedIn) {
                  await loginService.signOut();
                  Navigator.of(context).pushReplacementNamed('/welcomepage');
                }
                else {
                  bool succes = await loginService.signInWithGoogle();
                  if(succes) {
                    Navigator.of(context).pushNamed('/categorylistpage');
                  }
                }
              },
              child: Row(
                children: [
                  Icon(userLoggedIn ? Icons.logout : Icons.login, color: Colors.white, size: 20),
                  Text(userLoggedIn ? 'Sign Out': 'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )
            ),
            IconFont(
              iconName: DIFIcons.dif,
              size: 150,
              color: Colors.white
            )
          ],
        )
      )
    );
  }
}