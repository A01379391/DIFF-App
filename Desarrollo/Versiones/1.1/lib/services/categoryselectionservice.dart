import 'package:dif/models/category.dart';
import 'package:dif/models/subcategory.dart';

class CategorySelectionService {

  late Category _selectedCategory;
  late SubCategory _selectedSubCategory;

  Category get selectedCategory => _selectedCategory;
  set selectedCategory(Category value) {
    _selectedCategory = value;
  }

  SubCategory get selectedSubCategory => _selectedSubCategory;
  set selectedSubCategory(SubCategory value) {
    _selectedSubCategory = value;
  }
}