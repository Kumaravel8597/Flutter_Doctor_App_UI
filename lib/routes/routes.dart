import 'package:flutter/widgets.dart';

import '../pages/home1/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) =>  HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
};