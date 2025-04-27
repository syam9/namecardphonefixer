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
          
          // Membungkus GridView dengan Expanded dan shrinkWrap
          GridView.count(
            crossAxisCount: 2, // 3 kolum
            crossAxisSpacing: 10, // Ruang antara kolum
            mainAxisSpacing: 10, // Ruang antara baris
            shrinkWrap: true, // Menyesuaikan saiz GridView dengan kandungannya
            physics: NeverScrollableScrollPhysics(), // Mencegah scroll dalam GridView
            children: [
          _serviceCard('LCD Screen Replacement', 'We offer quick and reliable screen replacements for various phone models.'),
          _serviceCard('Battery Replacement', 'Get your phone battery replaced with high-quality and durable batteries.'),
          _serviceCard('Charging Port Repair', 'Fixing or replacing faulty or loose charging ports like USB-C or Lightning port.'),
          _serviceCard('Camera Repair', 'Repairing or replacing front or back cameras that are malfunctioning, out of focus, or have lens issues.'),
          _serviceCard('Speaker & Microphone Repair', 'Fixing or replacing speakers or microphones if sound is distorted, muffled, or not working at all.'),
          _serviceCard('Screen Protector & Case Installation', 'Installing screen protectors and phone cases to safeguard your device from scratches and drops.'),
          _serviceCard('Button Repair (Power, Volume, Home)', 'Fixing or replacing malfunctioning buttons like power, volume, or home buttons that have become unresponsive.'),
          _serviceCard('Vibration & Haptic Feedback Repair', "Repairing issues with vibration motors or haptic feedback mechanisms that aren't working correctly."),
              // Tambah lagi item secara manual
            ],
          ),
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
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold), // .sp scales the text
            ),
            SizedBox(height: 5.h),
            Text(description),
          ],
        ),
      ),
    );
  }




}

