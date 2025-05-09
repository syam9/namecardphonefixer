import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';
import 'translation_provider.dart';

class ContactSection extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final translationProvider = Provider.of<TranslationProvider>(context);

    return FutureBuilder<List<String>>(
      future: Future.wait([
        translationProvider.translate('Contact Us'),
        translationProvider.translate('I need repair help, can you assist?'),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var texts = snapshot.data ?? ['', ''];

          return Container(
            padding: EdgeInsets.all(20.w),
            color: Colors.blueGrey[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Contact Us',
                  texts[0],
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black87),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10.w),
                    Text('+60 111 850 2966 (Syam)'),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10.w),
                    Text('phonefixercrew@gmail.com'),
                  ],
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: screenWidth,
                  height: screenHeight / 14,
                  child: ElevatedButton(
                    onPressed: () {
                      // Gantikan nombor telefon dengan nombor sebenar
                      final phoneNumber = '+601118502966'; // Nombor telefon
                      final url = 'https://wa.me/$phoneNumber?text=phone'; // URL WhatsApp
                      _launchURL(url); // Buka WhatsApp dengan URL
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Menggunakan SvgPicture untuk ikon WhatsApp
                        SvgPicture.asset(
                          'assets/WhatsApp.svg', // Path kepada fail SVG WhatsApp
                          width: 24, // Saiz ikon
                          height: 24, // Saiz ikon
                          color: Colors.white, // Warna ikon
                        ),
                        SizedBox(width: 10), // Ruang antara ikon dan teks
                        // Text(
                        //   'Jika anda ingin membuat tempahan, boleh hubungi saya melalui WhatsApp.',
                        //   style: TextStyle(color: Colors.white), // Warna teks putih
                        //   textAlign: TextAlign.center,
                        //   overflow: TextOverflow
                        //       .ellipsis,
                        //   softWrap: true,
                        //   maxLines: 2,
                        // ),

                        Flexible(
                          child: Text(
                            // 'I need repair help, can you assist?',
                            texts[1],
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow
                                .ellipsis, // Memendekkan teks jika melebihi ruang
                            softWrap:
                                true, // Membenarkan teks dibungkus ke baris baru
                            maxLines: 2, // Hadkan bilangan baris kepada 2
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF01796F), // Warna hijau WhatsApp
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(screenWidth, 50),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Center(child:SizedBox(height: 20, width: 20, child: CircularProgressIndicator()));
      },
    );
  }
}
