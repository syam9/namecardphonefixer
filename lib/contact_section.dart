import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      color: Colors.blueGrey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black87),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10.w),
              Text('+60 123 456 789'),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.email),
              SizedBox(width: 10.w),
              Text('info@phonerepair.com'),
            ],
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () {
              // Logic to navigate to contact form or external contact options
            },
            child: Text('Get in Touch'),
          ),
        ],
      ),
    );
  }
}

