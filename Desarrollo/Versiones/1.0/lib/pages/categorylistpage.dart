import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:dif/helpers/utils.dart';
import 'package:dif/models/category.dart';
import 'package:dif/pages/selectedcategorypage.dart';
import 'package:dif/widgets/categorycard.dart';
import 'package:dif/widgets/iconfont.dart';
import 'package:dif/widgets/mainappbar.dart';
import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: Text('Seleccione una categoria',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index){
                  return CategoryCard(
                    category: categories[index],
                    onCardClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedCategoryPage(
                            selectedCategory: this.categories[index]
                          )
                        )
                      );
                    }
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
