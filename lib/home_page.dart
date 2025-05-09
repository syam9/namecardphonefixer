import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'services_section.dart';
import 'about_section.dart';
import 'contact_section.dart';

import 'package:provider/provider.dart';
import 'translation_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final translationProvider = Provider.of<TranslationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<String>(
          future: translationProvider.translate('Phone Fixer Crew'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data ?? 'Phone Fixer Crew');
            }
            return Text('Loading...');

            // Text('Phone Fixer Crew'),
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: DropdownButton<String>(
              value: translationProvider.selectedLanguage,
              underline: Container(),
              icon: Icon(Icons.language, color: Colors.white),
              style: TextStyle(
                color: Colors.blue, // Warna teks pada nilai yang dipilih
              ),
              items: [
                DropdownMenuItem(
                    value: 'en',
                    child: Text(
                      'English',
                      style: TextStyle(
                        color: Colors.black, // Warna teks
                      ),
                    )),
                DropdownMenuItem(
                    value: 'ms',
                    child: Text(
                      'Malay',
                      style: TextStyle(
                        color: Colors.black, // Warna teks
                      ),
                    )),
                DropdownMenuItem(
                    value: 'zh',
                    child: Text(
                      'Chinese',
                      style: TextStyle(
                        color: Colors.black, // Warna teks
                      ),
                    )),
              ],
              onChanged: (lang) {
                if (lang != null) {
                  translationProvider.changeLanguage(lang);
                }
              },
            ),
          ),
        ],
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
