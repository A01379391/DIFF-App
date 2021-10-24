import 'package:dif/pages/categorylistpage.dart';
import 'package:dif/pages/detailspage.dart';
import 'package:dif/pages/mappage.dart';
import 'package:dif/pages/selectedcategorypage.dart';
import 'package:dif/pages/splashpage.dart';
import 'package:dif/pages/welcomepage.dart';
import 'package:dif/services/categoryselectionservice.dart';
import 'package:dif/services/categoryservice.dart';
import 'package:dif/services/loginservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/utils.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => LoginService()
        ),
        Provider(
          create: (_) => CategorySelectionService()
        ),
        Provider(
          create: (_) => CategoryService()
        )
      ],
      child: MaterialApp(
        navigatorKey: Utils.mainAppNav,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashPage(duration: 3,goToPage: "/welcomepage"),
          '/welcomepage': (context) => WelcomePage(),
          '/categorylistpage': (context) => CategoryListPage(),
          '/selectedcategorypage': (context) => SelectedCategoryPage(),
          '/detailspage': (context) => DetailsPage(),
          '/mappage': (context) => MapPage()
        }
      )
    )
  );
}





