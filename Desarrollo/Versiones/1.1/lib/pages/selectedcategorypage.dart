import 'package:dif/models/category.dart';
import 'package:dif/services/categoryselectionservice.dart';
import 'package:dif/widgets/categoryicon.dart';
import 'package:dif/widgets/mainappbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedCategoryPage extends StatelessWidget {

  late Category selectedCategory;

  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context, listen: false);
    selectedCategory = catSelection.selectedCategory;

    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryIcon(
                      color: this.selectedCategory.color,
                      iconName: this.selectedCategory.icon
                  ),
                  SizedBox(width: 10),
                  Text(this.selectedCategory.name,
                    style: TextStyle( color: this.selectedCategory.color, fontSize: 30)
                  )
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                  child:  GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                        this.selectedCategory.subCategories!.length,
                        (index) {
                          return GestureDetector(
                            onTap: () {
                              catSelection.selectedSubCategory = this.selectedCategory.subCategories![index];
                              Navigator.of(context).pushNamed('/detailspage');
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                        'assets/images/' + this.selectedCategory.subCategories![index].imgName + '.jpg',
                                        fit: BoxFit.cover, width: 100, height: 100
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(this.selectedCategory.subCategories![index].name,
                                      style: TextStyle(
                                          color: this.selectedCategory.subCategories![index].color,
                                          fontSize: 18
                                      )
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  )
              )
            ],
          )
        ),
      ),
    );
  }
}