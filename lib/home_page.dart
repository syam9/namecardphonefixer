import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'services_section.dart';
import 'about_section.dart';
import 'contact_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Fixer Crew'),
      ),
      body: ListView(
        children: [
          AboutSection(),
          ServicesSection(),
          ContactSection(),
        ],
      ),
    );
  }
}

