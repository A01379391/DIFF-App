import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:dif/widgets/iconfont.dart';
import 'package:dif/widgets/themebutton.dart';
import 'package:flutter/material.dart';

import 'categorylistpage.dart';


class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                        'assets/images/welcome_M.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                            child: ClipOval(
                                child: Container(
                                  width: 180,
                                  height: 180,
                                  color: AppColors.PAN,
                                  alignment: Alignment.center,
                                  child: IconFont(
                                    iconName: DIFIcons.dif,
                                    color: Colors.white,
                                    size: 130,
                                  ),
                                )
                            )
                        ),
                        SizedBox(height: 50),
                        Text('Bienvenido',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 50),
                        Text('al catalogo del DIF Huixquilucan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            )
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryListPage()
                                  )
                                );
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              color: Colors.blueAccent,
                              padding: EdgeInsets.all(25),
                              child: Text('Entrar como invitado',
                                  style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              )
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.white.withOpacity(0.2),
                                    highlightColor: Colors.white.withOpacity(0.2),
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Text('Iniciar sesion',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Colors.blueAccent,
                                              width: 4
                                          )
                                      ),
                                    ),
                                  )
                              )
                          ),
                        )
                      ],
                    )
                )
              ],
            )
        )
    );
  }
}