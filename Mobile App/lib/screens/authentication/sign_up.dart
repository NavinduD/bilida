// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_build_context_synchronously

import 'package:bilinda/screens/authentication/sign_in.dart';
import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  //controller
  final mothernamecontroller = TextEditingController();
  final motherAgecontroller = TextEditingController();
  final Emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final cpasswordcontroller = TextEditingController();
  final Numberofchildcontroller = TextEditingController();
  final addNumberofchildcontroller = TextEditingController();
  final Childnamecontroller = TextEditingController();
  final Gendercontroller = TextEditingController();
  final Childbirthdaycontroller = TextEditingController();
  final Registerdaycontroller = TextEditingController();
  final CHDRnumbercontroller = TextEditingController();
  final Divisionhealthcontroller = TextEditingController();
  final Familyhealthcontroller = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 255, 154, 147),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
            elevation: 0,
            title: Text(LocaleKeys.signup.tr(),
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 255, 255, 255),
                          Colors.deepPurpleAccent,
                          Color.fromARGB(255, 255, 154, 147)
                        ],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Form(
                key: _formkey, //key
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Mother's Name :",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),

                    //mother name add
                    TextFormField(
                      controller: mothernamecontroller,
                      onSaved: (value) {
                        mothernamecontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          //hintText:
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Mother's birth year :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    //motherbirthday
                    TextFormField(
                      controller: motherAgecontroller,
                      onSaved: (value) {
                        motherAgecontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          hintText: "yyyy",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("E-mail address :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    //email address
                    TextFormField(
                      controller: Emailcontroller,
                      onSaved: (value) {
                        Emailcontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          //hintText:
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    //password
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: passwordcontroller,
                      onSaved: (value) {
                        passwordcontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Confirm Password :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: cpasswordcontroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          //hintText:
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Number of children alive:",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: Numberofchildcontroller,
                      onSaved: (value) {
                        Numberofchildcontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          //hintText:
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Child name :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      controller: Childnamecontroller,
                      onSaved: (value) {
                        Childnamecontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          //hintText:
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Gender :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      controller: Gendercontroller,
                      onSaved: (value) {
                        Gendercontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          //hintText:
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Child birthday :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      controller: Childbirthdaycontroller,
                      onSaved: (value) {
                        Childbirthdaycontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          hintText: "yyyy-mm-dd",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("CHDR identity Number :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: CHDRnumbercontroller,
                      onSaved: (value) {
                        CHDRnumbercontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          //hintText:
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            "Division Health service Officer Division :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      controller: Divisionhealthcontroller,
                      onSaved: (value) {
                        Divisionhealthcontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          //hintText:
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Family Health service officer Division :",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),

                    TextFormField(
                      controller: Familyhealthcontroller,
                      onSaved: (value) {
                        Familyhealthcontroller.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          //hintText:
                          fillColor: Color.fromRGBO(255, 255, 255, 0.185),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    // button

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(245, 138, 140, 10),
                              elevation: 4,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              )),
                            ),
                            onPressed: () async {
                              var email = Emailcontroller.text;
                              var pw = passwordcontroller.text;
                              var cpw = cpasswordcontroller.text;

                              if (pw != cpw) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Passwords are not match",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16)),
                                ));
                                return;
                              }

                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: email, password: pw);

                                try {
                                  await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                          email: email, password: pw);

                                  User? user =
                                      FirebaseAuth.instance.currentUser;

                                  FirebaseFirestore.instance
                                      .collection("users")
                                      .doc(user!.uid)
                                      .set({
                                    "mother_name": mothernamecontroller.text,
                                    "mother_birth_year":
                                        motherAgecontroller.text,
                                    "number_of_children":
                                        Numberofchildcontroller.text,
                                    "child_name": Childnamecontroller.text,
                                    "child_gender": Gendercontroller.text,
                                    "child_birthday": DateFormat('y-M-d')
                                        .parse(Childbirthdaycontroller.text),
                                    "registered_date": DateFormat("y-M-d")
                                        .parse(Registerdaycontroller.text),
                                    "CHDR": CHDRnumbercontroller.text,
                                    "division_health":
                                        Divisionhealthcontroller.text,
                                    "family_health_division":
                                        Familyhealthcontroller.text
                                  });

                                  Navigator.pushNamedAndRemoveUntil(
                                      context, "/home", (route) => false);
                                } catch (e) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                        Text("Network error. ${e.toString()}"),
                                  ));
                                }
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "The password provided is too weak"),
                                  ));
                                } else if (e.code == 'email-already-in-use') {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "The account already exists for that email"),
                                  ));
                                }
                              } catch (e) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Network error"),
                                ));
                              }
                            },
                            child: Text('Sign up',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          // color: Color.fromARGB(255, 255, 255, 255),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(16.0))),
                          onPressed: () {
                            Navigator.pushNamed(context, "/sign_in");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            )),
                          ),
                          child: Text('Back',
                              style: TextStyle(
                                  color: Color.fromRGBO(245, 138, 140, 10),
                                  fontSize: 16)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
