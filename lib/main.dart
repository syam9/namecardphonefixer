import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_page.dart';

import 'package:provider/provider.dart';
import 'translation_provider.dart';

void main() {
  // runApp(MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (_) => TranslationProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // iPhone X screen size
      builder: (context, child) {
        return MaterialApp(
          title: 'Phone Fixer Crew',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xFF01796F), // Dark Pine
            primarySwatch: MaterialColor(
              0xFF01796F,
              {
                50: Color(0xFF01796F).withOpacity(0.1),
                100: Color(0xFF01796F).withOpacity(0.2),
                200: Color(0xFF01796F).withOpacity(0.3),
                300: Color(0xFF01796F).withOpacity(0.4),
                400: Color(0xFF01796F).withOpacity(0.5),
                500: Color(0xFF01796F).withOpacity(0.6),
                600: Color(0xFF01796F).withOpacity(0.7),
                700: Color(0xFF01796F).withOpacity(0.8),
                800: Color(0xFF01796F).withOpacity(0.9),
                900: Color(0xFF01796F).withOpacity(1.0),
              },
            ),
          ),
          home: HomePage(),
        );
      },
    );
  }
}
