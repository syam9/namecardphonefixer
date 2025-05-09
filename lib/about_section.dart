import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'translation_provider.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final translationProvider = Provider.of<TranslationProvider>(context);

    return FutureBuilder<List<String>>(
      future: Future.wait([
        translationProvider.translate('About Us'),
        translationProvider.translate('We specialize in repairing all brands of mobile phones with the best quality parts. Our skilled technicians provide quick and reliable repairs at affordable prices.'),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var texts = snapshot.data ?? ['', ''];


          return Container(
            padding:
                EdgeInsets.all(20.w), // .w will scale based on screen width
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
                  // 'About Us',
                  texts[0],
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black87),
                ),
                SizedBox(height: 10.h), // .h will scale based on screen height
                Text(
                  // 'We specialize in repairing all brands of mobile phones with the best quality parts. Our skilled technicians provide quick and reliable repairs at affordable prices.',
                  texts[1],
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black54),
                ),
              ],
            ),
          );



        }
        // return CircularProgressIndicator();
        return Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator()));
      },
    );
  }
}
