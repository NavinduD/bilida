// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "title": "Bilida",
    "remind": "Remind Me",
    "weight": "Weight Chart",
    "vaccine": "Vaccination",
    "note": "Special Note",
    "sighthear": "Sight & Hearing Test",
    "schedule": "Schedule",
    "contact": "Contact",
    "user": "Email Address :",
    "pass": "Password :",
    "signin": "Sign In",
    "signup": "Sign Up",
    "sign": "Don't have an account?",
    "Signinwarn": "Your email or password is incorrect."
  };
  static const Map<String, dynamic> si = {
    "title": "බිලිඳා",
    "remind": "මතක් කිරීම",
    "weight": "බර සටහන",
    "vaccine": "එන්නත්කරණය",
    "note": "විශේෂ සටහන",
    "sighthear": "පරික්ෂාව",
    "schedule": "කාලසටහන",
    "contact": "අමතන්න",
    "user": "ඊතැපැල් ලිපිනය :",
    "pass": "මුරපදය :",
    "signin": "ඇතුළුවන්න",
    "signup": "ලියාපදිංචි වන්න",
    "sign": "ගිණුමක් නැද්ද?",
    "Signinwarn": "ඔබගේ ඊමේල් හෝ මුරපදය වැරදියි."
  };
  static const Map<String, dynamic> ta = {
    "title": "பிலிதா",
    "remind": "நினைவூட்டல்",
    "weight": "எடை விளக்கப்படம்",
    "vaccine": "தடுப்பூசி",
    "note": "சிறப்பு குறிப்பு",
    "sighthear": "தேர்வு",
    "schedule": "அட்டவணை",
    "contact": "தொடர்புகள்",
    "user": "மின்னஞ்சல் முகவரி :",
    "pass": "கடவுச்சொல் :",
    "signin": "உள்நுழைய",
    "signup": "பதிவு செய்யவும்",
    "sign": "கணக்கு இல்லையா?",
    "Signinwarn": "உங்கள் மின்னஞ்சல் அல்லது கடவுச்சொல் தவறானது."
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "si": si,
    "ta": ta
  };
}
