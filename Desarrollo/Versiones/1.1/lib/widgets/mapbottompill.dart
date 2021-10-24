import 'package:dif/models/subcategory.dart';
import 'package:dif/services/categoryselectionservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'categoryicon.dart';

class MapBottomPill extends StatelessWidget {

  late SubCategory subCategory;

  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context, listen: false);
    this.subCategory = catSelection.selectedSubCategory;

    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset.zero
              )
            ]
        ),
        child: Column(
          children: [
            Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/${this.subCategory.imgName}.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          right: -10,
                          child: CategoryIcon(
                              color: this.subCategory.color,
                              iconName: this.subCategory.icon,
                              size: 20,
                              padding: 5
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(this.subCategory.name,
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                )
                            ),
                            Text('Magdalena Chichicaspa'),//encontrar forma de mostrar nombre de parte
                            Text('2km de distancia',
                                style: TextStyle(
                                    color: this.subCategory.color
                                )
                            ),
                            Text('Primera cerrada de Gardenia s/n Paraje El escobal, cerca del auditorio de Magdalena',
                                style: TextStyle(
                                    fontSize: 13.3
                                )
                            )
                          ],
                        )
                    ),
                    Icon(Icons.location_pin, color: this.subCategory.color, size: 50)
                  ],
                )
            )
          ],
        )
    );
  }
}