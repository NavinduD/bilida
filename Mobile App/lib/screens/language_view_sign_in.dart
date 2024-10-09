import 'dart:developer';

import 'package:bilinda/screens/authentication/sign_in.dart';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageViewSignIn extends StatelessWidget {
  const LanguageViewSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 168, 242, 254),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 168, 242, 254),
                Color.fromARGB(255, 238, 195, 209),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 26),
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: const Text(
                'Choose language',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            _SwitchListTileMenuItem(
                title: 'En',
                subtitle: 'English',
                locale: context.supportedLocales[0]),
            const _Divider(),
            _SwitchListTileMenuItem(
                title: 'සිං',
                subtitle: 'සිංහල',
                locale: context.supportedLocales[1]),
            const _Divider(),
            _SwitchListTileMenuItem(
                title: 'தமி',
                subtitle: 'தமிழ்',
                locale: context.supportedLocales[2]),
            const _Divider(),
          ],
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: const Divider(
        color: Colors.grey,
      ),
    );
  }
}

class _SwitchListTileMenuItem extends StatelessWidget {
  const _SwitchListTileMenuItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.locale,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Locale locale;

  bool isSelected(BuildContext context) => locale == context.locale;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      decoration: BoxDecoration(
        border:
            isSelected(context) ? Border.all(color: Colors.blueAccent) : null,
      ),
      child: ListTile(
          dense: true,
          // isThreeLine: true,
          title: Text(
            title,
          ),
          subtitle: Text(
            subtitle,
          ),
          onTap: () async {
            log(locale.toString(), name: toString());
            await context.setLocale(locale);
            // ignore: use_build_context_synchronously
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
              (Route<dynamic> route) => false,
            );
          }),
    );
  }
}
