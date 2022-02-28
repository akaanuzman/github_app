import 'package:flutter/material.dart';
import 'features/home/view/home_view.dart';
import 'core/extensions/app_extensions.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: NavigationRoute.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Github App',
      theme: _theme(context),
      home: HomeView(),
    );
  }

  ThemeData _theme(BuildContext context) => ThemeData(
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: context.textColor),
      );
}
