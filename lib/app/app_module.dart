import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meals/utils/routes.dart';
import './app_widget.dart';

import './app_controller.dart';
import './pages/home/home_controller.dart';
import './pages/home/home_page.dart';
import 'pages/category/category_page.dart';
import 'pages/meal/meal_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Routes.HOME, child: (_, args) => HomePage()),
        Router(Routes.CATEGORIES_MEALS, child: (_, args) => CategoryPage()),
        Router(Routes.MEAL_DETAIL, child: (_, args) => MealPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
