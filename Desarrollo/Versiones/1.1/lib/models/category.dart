import 'dart:ui';
import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/models/subcategory.dart';
import 'package:flutter/material.dart';
import 'categorypart.dart';

class Category {
  String name;
  IconData icon;
  Color color;
  String imgName;
  List<SubCategory>? subCategories;
  List<CategoryPart>? parts;

  Category(
    {
      required this.name,
      required this.icon,
      required this.color,
      required this.imgName,
      this.subCategories,
      this.parts
    }
  );

  factory Category.fromJson(Map<String, dynamic> json) {
    const FontFam = 'DIFIcons';

    return Category(
      name: json['name'],
      icon: IconData(int.parse('0x' + json['icon']), fontFamily: FontFam),
      color: Color(int.parse('0xFF' + json['color'])),
      imgName: json['imgName'],
      subCategories: SubCategory.fromJsonArray(json['subCategories'])
    );
  }
}
