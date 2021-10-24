import 'package:dif/models/category.dart';
import 'package:dif/services/categoryselectionservice.dart';
import 'package:dif/services/categoryservice.dart';
import 'package:dif/widgets/categorycard.dart';
import 'package:dif/widgets/mainappbar.dart';
import 'package:dif/widgets/sidemenubar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryListPage extends StatelessWidget {

  List<Category> categories = [];

  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context, listen: false);
    CategoryService catService = Provider.of<CategoryService>(context, listen: false);
    categories = catService.getCategories();

    return Scaffold(
      drawer: Drawer(
        child: SideMenuBar()
      ),
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
                      catSelection.selectedCategory = this.categories[index];
                      Navigator.of(context).pushNamed('/selectedcategorypage');
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
