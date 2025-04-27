import 'dart:convert';
import 'package:http/http.dart' as http;

class TranslationService {
  static Future<String> translateText({
    required String text,
    required String targetLang,
  }) async {
    final uri = Uri.parse('https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=$targetLang&dt=t&q=${Uri.encodeComponent(text)}');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data[0][0][0];
    } else {
      throw Exception('Translation failed');
    }
  }
}

