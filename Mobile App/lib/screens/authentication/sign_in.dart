// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:bilinda/screens/language_view_sign_in.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  ///Firebase
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 154, 147),
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  color: Color.fromARGB(255, 44, 44, 0))
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.language),
                onPressed: () {
                  Future.delayed(Duration.zero, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LanguageViewSignIn(),
                            fullscreenDialog: true));
                  });
                  // handle the press
                })
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 238, 195, 209),
                  Color.fromARGB(255, 145, 199, 243)
                ]),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      Image.asset('assets/logo_full.png',
                          width: 200, height: 200),

                      SizedBox(height: 40),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(LocaleKeys.user.tr()),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: userController,
                        //maxLength: 20,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(126, 255, 255, 255),
                            filled: true,
                            hintText: "Email Address",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),

                        onSaved: (value) {
                          userController.text = value!;
                        },
                      ),
                      SizedBox(height: 10),
                      //Text("data2"),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(LocaleKeys.pass.tr()),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(126, 255, 255, 255),
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),
                        onSaved: (value) {
                          passwordController.text = value!;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(245, 138, 140, 10),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            )),
                          ),
                          onPressed: () async {
                            var email = userController.text;
                            var pw = passwordController.text;

                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: email, password: pw);

                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/home", (route) => false);
                            } catch (e) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(LocaleKeys.Signinwarn.tr()),
                              ));
                            }
                          },
                          child: Text(
                            LocaleKeys.signin.tr(),
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        height: 85,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(LocaleKeys.sign.tr()),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/sign_up");
                            },
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  Color.fromRGBO(245, 138, 140, 10),
                            ),
                            child: Text(LocaleKeys.signup.tr()),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
