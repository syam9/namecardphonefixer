import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // iPhone X screen size
      builder: (context, child) {
        return MaterialApp(
          title: 'Phone Repair Services',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
