import 'package:flutter/material.dart';
import 'package:flutter_singleton_pattern_demo/common/app_router.dart';
import 'package:flutter_singleton_pattern_demo/signUp/sign_up_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'FlutterSingletonPatternDemo',
      theme: ThemeData(
          primarySwatch: getGreenMaterialColor(),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      onGenerateRoute: AppRouter.generateRoute,
      home: SignUpScreen());

  MaterialColor getGreenMaterialColor() {
    return MaterialColor(0xFF42C0A0, <int, Color>{
      50: Color(0xFF42C0A0),
      100: Color(0xFF42C0A0),
      200: Color(0xFF42C0A0),
      300: Color(0xFF42C0A0),
      400: Color(0xFF42C0A0),
      500: Color(0xFF42C0A0),
      600: Color(0xFF42C0A0),
      700: Color(0xFF42C0A0),
      800: Color(0xFF42C0A0),
      900: Color(0xFF42C0A0)
    });
  }
}
