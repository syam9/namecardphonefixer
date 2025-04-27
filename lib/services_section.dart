import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Services',
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black87),
          ),
          SizedBox(height: 10.h),
          _serviceCard('Screen Replacement', 'We offer quick and reliable screen replacements for various phone models.'),
          _serviceCard('Battery Replacement', 'Get your phone battery replaced with high-quality and durable batteries.'),
          _serviceCard('Water Damage Repair', 'Specialized repair for water-damaged phones to restore functionality.'),
        ],
      ),
    );
  }

  Widget _serviceCard(String title, String description) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), // .sp scales the text
            ),
            SizedBox(height: 5.h),
            Text(description),
          ],
        ),
      ),
    );
  }
}

