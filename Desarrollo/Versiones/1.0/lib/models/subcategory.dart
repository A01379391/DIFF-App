import 'dart:ui';
import 'category.dart';
import 'package:flutter/material.dart';

import 'categorypart.dart';

class SubCategory extends Category {

  SubCategory({
    required String name,
    required IconData icon,
    required Color color,
    required String imgName,
    required List<CategoryPart> parts,
  }): super(
    name: name,
    icon: icon,
    color: color,
    imgName: imgName,
    parts: parts
  );

}