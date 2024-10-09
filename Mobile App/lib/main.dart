// ignore_for_file: prefer_const_constructors

import 'package:bilinda/screens/authentication/sign_in.dart';
import 'package:bilinda/screens/generated/codegen_loader.g.dart';
import 'package:bilinda/screens/home.dart';
import 'package:bilinda/screens/vaccination.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bilinda/screens/authentication/sign_up.dart';
import 'package:bilinda/screens/loading.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('si'),
        Locale('ta'),
      ],
      path: 'assets/language',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Bilinda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/sign_up": (context) => SignUp(),
        "/sign_in": (context) => SignIn(),
        "/loading": (context) => LoadingPage(),
        "/home": (context) => HomePage(),
        "/vaccination": (context) => Vaccination()
      },
      initialRoute: "/loading",
    );
  }
}
