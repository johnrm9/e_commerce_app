import 'package:flutter/widgets.dart';

import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  SplashScreen.routeName: (BuildContext context) => SplashScreen(),
};
