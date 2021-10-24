import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dif/models/category.dart';

class CategoryService {

  FirebaseFirestore? _instance;

  List<Category> _categories = [];

  List<Category> getCategories() {
    return _categories;
  }

  Future<void> getCategoriesCollectionFromFirebase() async {

    _instance = FirebaseFirestore.instance;
    
    CollectionReference categories = _instance!.collection('DIF_App_Data');

    DocumentSnapshot snapshot = await categories.doc('Categories').get();
    var data = snapshot.data() as Map;
    var categoriesData = data['Categories'] as List<dynamic>;

    categoriesData.forEach((catData) {
      // convert each catData into the appropriate model
      _categories.add(Category.fromJson(catData));
    });
  }
}