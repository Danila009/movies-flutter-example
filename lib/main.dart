import 'package:flutter/material.dart';
import 'package:movies_flutter_example/ui/screens/main_screen/main-screen.dart';
import 'package:movies_flutter_example/ui/screens/splash_screen/splash-screen.dart';
import 'package:movies_flutter_example/ui/theme/colors.dart';
import 'package:provider/provider.dart';

import 'data/network/film/film-api-service.dart';
import 'navigation/screens.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            FilmApiService.create();
          },
        )
      ],
      child: MaterialApp(
        initialRoute: splashScreenRoute,
        theme: ThemeData(
            scaffoldBackgroundColor: primaryBackground
        ),
        routes: {
          mainScreenRoute: (context) => const MainScreen(),
          splashScreenRoute: (context) => const SplashScreen()
        },
      ),
    );
  }
}
