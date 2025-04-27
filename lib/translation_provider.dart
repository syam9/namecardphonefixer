import 'package:flutter/material.dart';
import 'translation_service.dart';

class TranslationProvider extends ChangeNotifier {
  String _selectedLanguage = 'en'; // Default English
  String get selectedLanguage => _selectedLanguage;

  Map<String, String> _translatedTexts = {};

  void changeLanguage(String newLanguage) {
    _selectedLanguage = newLanguage;
    _translatedTexts.clear();
    notifyListeners();
  }

  Future<String> translate(String originalText) async {
    if (_translatedTexts.containsKey(originalText)) {
      return _translatedTexts[originalText]!;
    }

    final translated = await TranslationService.translateText(
      text: originalText,
      targetLang: _selectedLanguage,
    );
    _translatedTexts[originalText] = translated;
    return translated;
  }
}

