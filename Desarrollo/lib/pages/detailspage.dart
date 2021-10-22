import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/models/category.dart';
import 'package:dif/models/categorypart.dart';
import 'package:dif/models/subcategory.dart';
import 'package:dif/widgets/categoryicon.dart';
import 'package:dif/widgets/mainappbar.dart';
import 'package:dif/widgets/CategoryPartsList.dart';
import 'package:dif/widgets/themebutton.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  SubCategory subCategory;
  DetailsPage({ required this.subCategory});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/' + widget.subCategory.imgName + '_desc.jpg'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent
                                ]
                            )
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryIcon(
                                  color: widget.subCategory.color,
                                  iconName: widget.subCategory.icon,
                                  size: 50
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: widget.subCategory.color,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Text(widget.subCategory.name,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white
                                          )
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                    MainAppBar(
                        themeColor: widget.subCategory.color
                    )
                  ],
                )
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CategoryPartsList(
                            subCategory: widget.subCategory
                          ),
                          ThemeButton(
                              label: "Ubicacion",
                              icon: Icon(DIFIcons.dif, color: Colors.white),
                              onClick: () {}
                          )
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        )
    );
  }
}