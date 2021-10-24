import 'dart:ui';
import 'package:dif/helpers/DIFIcons.dart';

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

  factory SubCategory.fromJson(Map<String, dynamic> json) {

    const FontFam = 'DIFIcons';

    return SubCategory(
      name: json['name'],
      icon: IconData(int.parse('0x' + json['icon']),fontFamily: FontFam),
      color: Color(int.parse('0xFF' + json['color'])),
      imgName: json['imgName'],
      parts: CategoryPart.fromJsonArray(json['parts'])
    );
  }

  static List<SubCategory> fromJsonArray(List<dynamic> jsonArray) {
    List<SubCategory> subCategoriesFromJson = [];

    jsonArray.forEach((jsonData) {
      subCategoriesFromJson.add(SubCategory.fromJson(jsonData));
    });

    return subCategoriesFromJson;
  }
}