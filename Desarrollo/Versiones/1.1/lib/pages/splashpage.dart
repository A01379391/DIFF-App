import 'package:dif/helpers/appcolors.dart';
import 'package:dif/helpers/utils.dart';
import 'package:dif/services/categoryservice.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget{
  int duration = 0;
  String goToPage;

  SplashPage({required this.goToPage,required this.duration});


  @override
  Widget build(BuildContext context){

    CategoryService catService = Provider.of<CategoryService>(context, listen: false);

    Future.delayed(Duration(seconds: this.duration), () async{

      // await for the firebase initialization to occure
      FirebaseApp app = await Firebase.initializeApp();

      // fetch the categories from firebase
      catService.getCategoriesCollectionFromFirebase()
      .then((value) {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => this.goToPage)
        );*/
        Utils.mainAppNav.currentState!.pushNamed(this.goToPage);
      });
    });

    return Scaffold(
        body: Container(
            color: Color(0xFFFFFFFF),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logoDif.png')
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 80),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          width: 150,
                          height: 150,
                          child: CircularProgressIndicator(
                            strokeWidth: 10,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.LogoDIF.withOpacity(0.5)
                            ),
                          )
                      )
                  )
                )
              ],
            )
        )
    );
  }
}