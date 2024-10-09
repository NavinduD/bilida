import 'package:bilinda/screens/remind_me.dart';
import 'package:bilinda/screens/schedule.dart';
import 'package:bilinda/screens/sight_hear.dart';
import 'package:bilinda/screens/special_note.dart';
import 'package:bilinda/screens/vaccination.dart';
import 'package:bilinda/screens/weight_chart.dart';
import 'package:bilinda/screens/contact.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'generated/locale_keys.g.dart';
import 'language_view.dart';
import 'nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> userID = [];
    // CollectionReference users = FirebaseFirestore.instance.collection("users");

    // Future getUserId() async {
    //   await FirebaseFirestore.instance
    //       .collection('users')
    //       .get()
    //       .then((snapshot) => snapshot.docs.forEach((document) {
    //             userID.add(document.id);
    //           }));
    // }

    int daysleft = 0;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const NavBar(),
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
        title: Text(LocaleKeys.title.tr(),
            style: TextStyle(
                shadows: const <Shadow>[
                  Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      color: Color.fromARGB(255, 44, 44, 0))
                ],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 255, 255, 255),
                      Colors.deepPurpleAccent,
                      Color.fromARGB(255, 255, 154, 147)
                    ],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
        centerTitle: true,
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
                          builder: (_) => const LanguageView(),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 110,
                ),
                SizedBox(
                  width: 360,
                  height: 200,
                  child: Card(
                    elevation: 4,
                    color: const Color.fromARGB(196, 244, 232, 254),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/child.jpg',
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Name :",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 241, 123, 115),
                                    fontSize: 16,
                                    fontFamily: 'Roboto Slab',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Text(
                              "Couldn't Finish",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                  fontFamily: 'Roboto Slab'),
                            ),
                            const Text(
                              "Date of Birth :",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 241, 123, 115),
                                  fontSize: 16,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "2022/08/22",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                  fontFamily: 'Roboto Slab'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                    height: 40,
                                    child: Card(
                                      elevation: 0,
                                      color: const Color.fromARGB(
                                          196, 186, 186, 186),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          daysleft.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                245, 138, 140, 10),
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("Days Remains",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 150, 150, 150)))
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RemindMe()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(245, 138, 140, 10),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.remind.tr(),
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WeightChart()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(220, 142, 142, 50),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.weight.tr(),
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Vaccination()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(246, 160, 194, 20),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.vaccine.tr(),
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecialNote()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(218, 127, 209, 30),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.note.tr(),
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SightHear()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(242, 187, 124, 20),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, bottom: 16, left: 10, right: 10),
                              child: Text(
                                LocaleKeys.sighthear.tr(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 16, fontFamily: "Sitka Text"),
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Schedule()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(126, 195, 169, 50),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.schedule.tr(),
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Contact()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(147, 206, 252, 10),
                            elevation: 4,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),
                          ),
                          child: Text(
                            LocaleKeys.contact.tr(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, fontFamily: "Sitka Text"),
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
