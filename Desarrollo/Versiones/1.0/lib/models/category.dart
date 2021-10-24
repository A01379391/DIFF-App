import 'dart:ui';
import 'package:dif/models/subcategory.dart';
import 'package:flutter/material.dart';

import 'categorypart.dart';

class Category {
  String name;
  IconData icon;
  Color color;
  String imgName;
  List<SubCategory>? subCategories;
  List<CategoryPart> parts;

  Category(
    {
      required this.name,
      required this.icon,
      required this.color,
      required this.imgName,
      this.subCategories,
      required this.parts
    }
  );
}
