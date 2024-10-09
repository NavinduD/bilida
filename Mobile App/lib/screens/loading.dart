import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    User? user = FirebaseAuth.instance.currentUser;
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, user == null ? "/sign_in" : "/home", (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Welcom_page.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const Image(image: AssetImage("images/logo_full.png",: 200, height: 200))
              Image.asset('assets/logo_full.png', width: 200, height: 200),
              Container(
                child: LoadingAnimationWidget.horizontalRotatingDots(
                  color: const Color.fromARGB(255, 149, 14, 147),
                  size: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
