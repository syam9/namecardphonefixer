import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w), // .w will scale based on screen width
      color: Colors.blueGrey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200.h, // Height of the image, scaled using ScreenUtil
            child: Image.asset(
              'assets/logo.png', // Path to your image asset
              fit: BoxFit.cover, // Ensures image scales properly
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'About Us',
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black87),
          ),
          SizedBox(height: 10.h), // .h will scale based on screen height
          Text(
            'We specialize in repairing all brands of mobile phones with the best quality parts. Our skilled technicians provide quick and reliable repairs at affordable prices.',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

